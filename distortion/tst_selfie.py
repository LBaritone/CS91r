"""Takes a selfie of visitors

Attributes:
    CAMLED (int): GPIO output that is used to switch between right and left camera
    picam: PiCamera object
"""
import RPi.GPIO as GPIO
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)

import time
import os
import numpy as np

from lib_utils import *

FILENAME = "aqua_single_pose"
FILEPATH = "./data/"
n = 60

def selfie(i):
 #    # right 
	# GPIO.output(CAMLED, False)
	# picam.capture('{}_sr.jpg'.format(U_FILENAME))
    # left camera
	GPIO.output(CAMLED, True)
	file = FILEPATH + FILENAME + str(i) + ".jpg"
	picam.capture(file)
	print(file)


CAMLED = 40
GPIO.setup(CAMLED, GPIO.OUT)
from picamera import PiCamera
picam = PiCamera()
picam.resolution = (2592, 1944) # full resolution for calibration
picam.framerate = 15
picam.rotation = 180


for i in range(n) :
    selfie(i)
    time.sleep(1)

GPIO.cleanup()
