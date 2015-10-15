import json
import threading

class JSONFile:
    def __init__(self, filename):
        self.filename = filename
        self.ruleList = None
        try:
            with open(self.filename, "r") as f:
                j = json.load(f)
                self.json = j
                for jsonobj in j:
                    print jsonobj
        except ValueError:
            print filename + ' is a bad json file'
            self.json = None

    def cleanJSON(filename):
        print 'cleaning json file'
        with open(filename, "w") as fileToClean:
            lst = []
            json.dump(lst, fileToClean, indent=4)

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
            json.dump(lastFeeds, log, indent=4)

    def listToJSON(lst):
        jsonlst = []
        with open(live, "w") as jsonfile:
            for sensor in sensorlist:
                jsonobj = {}
                jsonobj['id'] = sensor.idx
                jsonobj['type'] = sensor.sensorType
                jsonobj['value'] = sensor.value
                jsonlst.append(jsonobj)
                json.dump(jsonlst, jsonfile, indent=4)
                with open(filename, "r") as f:
                    j = json.load(f)
                    for jsonobj in j:
                        print jsonobj
                        rule = Rule(jsonobj['id'], jsonobj['threshold'], jsonobj['cond'])
                        ruleLst.append(rule)
                    return ruleLst
