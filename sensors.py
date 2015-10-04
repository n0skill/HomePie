import RPi.GPIO as GPIO
import spidev
import time
import Queue
from lib_nrf24 import NRF24

class Sensor:
    def __init__(self, idx, sensorType, value):
        self.idx = idx
        self.sensorType = sensorType
        self.value = value
    def setid(idx):
        self.idx = sensorID
    def setValue(value):
        self.value = value


# This class deals with the packets and gives the packets he recieved :)
class SensorRadio:
    pipes = []
    def __init__(self):
        GPIO.setmode(GPIO.BCM)
        print 'Init a new instance of SensorRadio'
        # Radio setup
        pipes = [[0xe7, 0xe7, 0xe7, 0xe7, 0xe7], [0xc2, 0xc2, 0xc2, 0xc2, 0xc2]]
        self.radio = NRF24(GPIO, spidev.SpiDev())
        self.radio.begin(0, 25)
        self.radio.setRetries(15,15)
        self.radio.setDataRate(NRF24.BR_1MBPS)
        self.radio.setPALevel(NRF24.PA_MIN)
        self.radio.setAutoAck(True)
        self.radio.enableDynamicPayloads()
        self.radio.openWritingPipe(pipes[0])
        self.radio.openReadingPipe(1, pipes[1])
        self.radio.startListening()
        self.radio.stopListening()
        self.radio.printDetails()

    def listen(self):
        self.pipe = [0]
        self.feeds = []
        self.recv_buffer = []
        self.radio.startListening()
        while not self.radio.available(self.pipe):
            # We listen for a while
            time.sleep(10000/1000000.0)
            self.radio.read(self.recv_buffer, self.radio.getDynamicPayloadSize())
            self.radio.stopListening()
        print 'radio: recieved buffer.'
        if len(self.recv_buffer) is 5:
            print 'length of packet seems ok.'
            return self.recv_buffer
        else:
            print 'length of packet is wierd. Ignore.'
            self.radio.stopListening()
            self.radio.startListening()
            return None
