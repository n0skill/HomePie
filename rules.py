import json
from jsonfiles import JSONFile

class Rule:
    def __init__(self, threshold, condIsGt, sensor, active):
        self.threshold = threshold
        self.condIsGt = condIsGt
        self.sensor = sensor
        self.active = active

    def checkRule(self):
        ruleCheck = self.sensor.value > self.threshold
        # Returns true when the rule has to be applied
        if self.condIsGt:
            return ruleCheck
        else:
            return not ruleCheck

class RuleList:
    def __init__(self, filename):
        jsonfile = JSONFile(filename)
        jsonlist = jsonfile.json
        self.rl = []
        try:
           for jsonobj in jsonlist:
                rule = Rule(jsonobj['threshold'], jsonobj['cond'], jsonobj['id'], jsonobj['active'])
                self.rl.append(rule)
        except ValueError:
            print 'Erreur dans le json'
