#encoding: utf-8
import RPi.GPIO as GPIO
import time

# macro
led = 24

#setting
GPIO.setwarnings(True)
GPIO.setmode(GPIO.BCM)
GPIO.setup(led, GPIO.OUT, initial=GPIO.LOW)

{{_cursor_}}

#clean up
GPIO.cleanup()
