#!/usr/bin/python
# -*- coding: utf-8 -*-
#
# Example program to receive packets from the radio link
#

#import RPi.GPIO as GPIO
#from sensors import SensorRadio
from sensors import Sensor
from rules import Rule
from rules import RuleList
from jsonfiles import JSONFile
import threading
import time

sensors = []
liveFilename = 'web_interface/data.json'
ruleFilename = "rules.json"
jsonFile = JSONFile(liveFilename)

def getRules(filename):
    return RuleList(filename)

try:
    sensor = Sensor(1, 4, 10)
    ruleList = getRules(ruleFilename).rl
    for rule in ruleList:
        print rule.sensor

#    rad = SensorRadio()
#    while(True):
#        buff = rad.listen()
#        print buff
#        if buff is not None:
#            newsensor = Sensor(buff[0], buff[1], buff[3])
#            # Todo: Add the sensor to the list if needed
#            if any(oldsensor.idx == newsensor.idx for oldsensor in sensors):
#                for oldsensor in sensors:
#                    if oldsensor.idx == newsensor.idx:
#                        oldsensor.value = newsensor.value
#                        print 'Already in list. Update the values'
#                        time.sleep(1)
#            else:
#                sensors.append(newsensor)
#        listToJson(sensors)
#        time.sleep(1)

except KeyboardInterrupt:
    print 'Got interrupt from keyboard'
    GPIO.cleanup()
