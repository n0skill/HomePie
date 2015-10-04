#!/usr/bin/python
# -*- coding: utf-8 -*-
#
# Example program to receive packets from the radio link
#
import RPi.GPIO as GPIO
from sensors import Sensor
from sensors import SensorRadio
import time
import json
import threading

live = 'web_interface/data.json'
LOGFILE = 'web_interface/log.json'


# Function definitions ##################################
def logToJSON():
    threading.Timer(10.0, logToJSON).start()
    lastFeeds = []
    with open(LOGFILE, mode='r') as oldlog:
        lastFeeds = json.load(oldlog)
    with open(LOGFILE, 'w') as log:
        logJSON = {}
        logJSON['timestamp'] = time.time()
        logJSON['value'] = 3
        lastFeeds.append(logJSON)
        json.dump(lastFeeds, log, indent=4);

def listToJson(sensorlist):
    jsonlst = []
    with open(live, "w") as jsonfile:
        for sensor in sensorlist:
            jsonobj = {}
            jsonobj['id'] = sensor.idx
            jsonobj['type'] = sensor.sensorType
            jsonobj['value'] = sensor.value
            jsonlst.append(jsonobj)

        json.dump(jsonlst, jsonfile, indent=4)

def cleanJSON(filename):
    print 'cleaning json file'
    with open(filename, "w") as fileToClean:
        lst = []
        json.dump(lst, fileToClean, indent=4)


# Main program ##########################################

## Initialisations
sensors = []

# First startup, clean files
cleanJSON(live)

# Main loop
try:
    rad = SensorRadio()
    while(True):
        buff = rad.listen()
        print buff
        if buff is not None:
            newsensor = Sensor(buff[0], buff[1], buff[3])
            # Todo: Add the sensor to the list if needed
            if any(oldsensor.idx == newsensor.idx for oldsensor in sensors):
                for oldsensor in sensors:
                    if oldsensor.idx == newsensor.idx:
                        oldsensor.value = newsensor.value
                        print 'Already in list. Update the values'
                        time.sleep(1)
            else:
                sensors.append(newsensor)
        listToJson(sensors)
        time.sleep(1)

except KeyboardInterrupt:
    print 'Got interrupt from keyboard'
    GPIO.cleanup()
