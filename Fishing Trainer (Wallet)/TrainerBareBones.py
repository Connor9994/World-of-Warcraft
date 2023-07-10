import autoit
import time
import pyautogui
import cv2
import numpy as np
import matplotlib.pyplot as plt
import os
from PIL import ImageChops
import math
import operator
import functools
import tkinter as tk

# Root-Mean-Squared Difference Function
# https://gist.github.com/sente/ea44cf014c5776a1a5bf

def rmsdiff(im1, im2):
    h = ImageChops.difference(im1, im2).histogram()
    return math.sqrt(functools.reduce(operator.add,
                                      map(lambda h, i: h*(i**2), h, range(256))
                                      ) / (float(im1.size[0]) * im1.size[1]))


def DisplayTooltip(totalCasts, DragonfinCaught, MusselbackCaught, PygmyCaught, TimeElapsed, CatchAdjustment):
    DragonfinPrice = 2.5
    MusselbackPrice = 1
    PygmyPrice = 2
    GoldTotal = (DragonfinCaught*DragonfinPrice) + \
        (MusselbackCaught*MusselbackPrice) + (PygmyCaught*PygmyPrice)
    TimeElapsed = round(time.time() - TimeElapsed, 2)
    GoldPerHour = round(3600*(GoldTotal/TimeElapsed))
    goldText = "Time Elapsed: " + str(TimeElapsed) + "\n" + "Total Casts: " + str(totalCasts) + "\n" + "Dragonfin: " + str(DragonfinCaught) + "\n" + "Musselback: " + str(MusselbackCaught) + "\n" + \
        "Pygmy: " + str(PygmyCaught) + "\n" + "\n" + "Gold Total: " + str(GoldTotal) + "\n" + "Gold/hr: " + \
        str(GoldPerHour) + "\n" + "\n" + "Threshold: " + \
        str(CatchThreshold + CatchAdjustment)
    autoit.tooltip(goldText, 1336, 58)


# Start a timer
LastCast = time.time()

# Start a timer
LastBait = time.time() - 600

# Start a timer
LastClear = time.time() - 3600

# Start a timer
TimeElapsed = time.time()

DragonfinCaught = 0
MusselbackCaught = 0
PygmyCaught = 0
BonescaleCaught = 0
CatchAdjustment = 0
CatchThreshold = 12
totalCasts = 0

# Loop until broken
while True:
    try:
        # Screenshot right monitor
        image = pyautogui.screenshot(region=(0, 0, 1920, 1080))
        image.save("Screen.png")

        # Import Bobber + Entire Screen
        Bobber = cv2.imread("Bobber.png")
        Screen = cv2.imread("Screen.png")

        # Use the OpenCV function matchTemplate() to search for matches between an image patch and an input image
        res1 = cv2.matchTemplate(Screen, Bobber, cv2.TM_CCOEFF_NORMED)

        try:
            colorFind = autoit.pixel_search(1920,0,0,1080,0xFA4827, 10)
            print("Bobber found at (" + str(colorFind[0]) + ", " + str(colorFind[1]) + ")")
            autoit.mouse_move(colorFind[0], colorFind[1])
            time.sleep(5)
        except:
            colorFind = []
            continue

        w, h = Bobber.shape[:-1]

        # Math: Location(s) of matches. This is found experimentally. Too low? Everything matches for a bobber. Too high? Fails to find bobber
        Length = 0
        breakout = 0
        baitBreakout = 0
        trashBreakout = 0

        DisplayTooltip(totalCasts, DragonfinCaught, MusselbackCaught,
                       PygmyCaught, TimeElapsed, CatchAdjustment)

        cv2.imwrite('result.png', Screen)
    except Exception as e:
        print(e)
