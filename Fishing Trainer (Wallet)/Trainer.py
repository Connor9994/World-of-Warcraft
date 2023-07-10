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

# Loop until brokenBBBB
while True:
    try:
        # Screenshot right monitor
        image = pyautogui.screenshot(region=(0, 0, 1920, 1080))
        image.save("Screen.png")

        # Import Bobber + Entire Screen
        Bobber = cv2.imread("Bobber6.png")
        Screen = cv2.imread("Screen.png")

        # Use the OpenCV function matchTemplate() to search for matches between an image patch and an input image
        res1 = cv2.matchTemplate(Screen, Bobber, cv2.TM_CCOEFF_NORMED)

        w, h = Bobber.shape[:-1]

        # Math: Location(s) of matches. This is found experimentally. Too low? Everything matches for a bobber. Too high? Fails to find bobber
        loc1 = np.where(res1 >= .515)  # 0.6 found the bobber 100% of the time
        Length = 0
        breakout = 0
        baitBreakout = 0
        trashBreakout = 0

        DisplayTooltip(totalCasts, DragonfinCaught, MusselbackCaught,
                       PygmyCaught, TimeElapsed, CatchAdjustment)

        # If it's been 17 seconds there can't possibly be a bobber anymore, cast a new line
        if (time.time() - LastCast > 16.5):
            print("Time exceded fishing timer")
            LastCast = time.time()
            autoit.mouse_click("left", 603, 466)
            autoit.mouse_move(666, 498)
            totalCasts = totalCasts + 1
            DisplayTooltip(totalCasts, DragonfinCaught, MusselbackCaught,
                           PygmyCaught, TimeElapsed, CatchAdjustment)
            CatchAdjustment = CatchAdjustment - .1

        # If it's been 10 min, there can't possibly be a bait on the line
        if (time.time() - LastBait > 600):
            print("Bait Expired")
            LastBait = time.time()
            autoit.send("{B}")
            time.sleep(2)
            image = pyautogui.screenshot(region=(0, 0, 1920, 1080))
            image.save("Screen.png")
            Screen = cv2.imread("Screen.png")
            Bait = cv2.imread("Bait.png")
            res2 = cv2.matchTemplate(Screen, Bait, cv2.TM_CCOEFF_NORMED)
            loc2 = np.where(res2 >= .8)
            for pt in zip(*loc2[::-1]):
                if (baitBreakout == 0):
                    BaitX = pt[0] + 25
                    BaitY = pt[1] + 25
                    baitBreakout = 1
                    print("Found bait at (" + str(BaitX) + "," + str(BaitY) + ")")
                    autoit.mouse_move(BaitX, BaitY)
                    autoit.mouse_click("right")
                    time.sleep(2)
            autoit.send("{B}")
            autoit.mouse_move(1428, 170, 10)

        # If it's been 60 min, there must be boxes to open and fish to toss
        if (time.time() - LastClear > 3600):
            print("Bait Expired")
            LastClear = time.time()
            time.sleep(2)
            autoit.send("{B}")
            time.sleep(2)
            image = pyautogui.screenshot(region=(0, 0, 1920, 1080))
            image.save("Screen.png")
            Screen = cv2.imread("Screen.png")
            Trash = cv2.imread("Trash.png")
            Crate = cv2.imread("Crate.png")
            res3 = cv2.matchTemplate(Screen, Trash, cv2.TM_CCOEFF_NORMED)
            res4 = cv2.matchTemplate(Screen, Crate, cv2.TM_CCOEFF_NORMED)
            loc3 = np.where(res3 >= .8)
            loc4 = np.where(res4 >= .8)
            for pt in zip(*loc3[::-1]):
                FishX = pt[0] + 25
                FishY = pt[1] + 25
                print("Found trash fish at (" + str(FishX) + "," + str(FishY) + ")")
                autoit.mouse_click("left", FishX, FishY)
                time.sleep(.1)
                autoit.mouse_click("left", 1519, 282)
                time.sleep(.1)
                autoit.mouse_click("left", 848, 181)
            for pt in zip(*loc4[::-1]):
                BoxX = pt[0] + 25
                BoxY = pt[1] + 25
                autoit.mouse_move(BoxX, BoxY)
                autoit.mouse_click("right")
                time.sleep(.1)
            autoit.send("{B}")

        # For each match found (we make sure it only runs once), monitor the bobber
        for pt in zip(*loc1[::-1]):
            if (Length == 0):
                BobberX = pt[0]
                BobberY = pt[1]
                print("Watching Bobber at (" +
                      str(BobberX) + "," + str(BobberY) + ")")
                breakout = 0
                BobberArray = []

                # While bobber is there, wait for splash
                while True:
                    # If it's been 17 seconds there can't possibly be a bobber anymore, cast a new line
                    if (time.time() - LastCast > 16.5):
                        print("Time exceded fishing timer")
                        LastCast = time.time()
                        autoit.mouse_click("left", 603, 466)
                        autoit.mouse_move(666, 498)
                        totalCasts = totalCasts + 1
                        DisplayTooltip(totalCasts, DragonfinCaught, MusselbackCaught,
                                       PygmyCaught, TimeElapsed, CatchAdjustment)
                        breakout = 1
                        break

                    # Smaller screenshot of just the water
                    image = pyautogui.screenshot(
                        region=(BobberX, BobberY, 48, 49))
                    image.save("BobberWatcher.png")
                    time.sleep(.1)
                    image = pyautogui.screenshot(
                        region=(BobberX, BobberY, 48, 49))
                    image.save("BobberWatcherLast.png")

                    # Root-Mean-Squared Difference Function: Compare the two photos
                    if (os.path.exists(r"C:\Users\Connor\Desktop\Fishing Trainer (Wallet)\BobberWatcherLast.png")):
                        im1 = ImageChops.Image.open(
                            r"C:\Users\Connor\Desktop\Fishing Trainer (Wallet)\BobberWatcher.png")
                        im2 = ImageChops.Image.open(
                            r"C:\Users\Connor\Desktop\Fishing Trainer (Wallet)\BobberWatcherLast.png")
                        ImageDifferenceLast = rmsdiff(im1, im2)
                        BobberArray.append(ImageDifferenceLast)
                        print(ImageDifferenceLast)
                     
                    """
                    # Found experimentally. 0.6 appears to be the threshold of pure-water
                    if (ImageDifferenceLast < 0.6):
                        print("No bobber")
                        LastCast = time.time()
                        autoit.mouse_click("left", 603, 466)
                        autoit.mouse_move(666, 498)
                        totalCasts = totalCasts + 1
                        DisplayTooltip(totalCasts, DragonfinCaught, MusselbackCaught,
                                    PygmyCaught, TimeElapsed, CatchAdjustment)
                        time.sleep(3)
                        break

                    # Found experimentally. ~7.0 appears to be the threshold of a splash
                    if (ImageDifferenceLast > (CatchThreshold + CatchAdjustment)):
                        LastCast = time.time()
                        print("Splash")
                        autoit.mouse_click("right", BobberX+25, BobberY+25)
                        time.sleep(.5)
                        FishCaught = pyautogui.screenshot(
                            region=(1431, 1016, 114, 35))
                        FishCaught.save("FishCaught.png")
                        FishCaught = cv2.imread("FishCaught.png")
                        Dragonfin = cv2.imread("Dragonfin.png")
                        Musselback = cv2.imread("Musselback.png")
                        Pygmy = cv2.imread("Pygmy.png")
                        Bonescale = cv2.imread("Bonescale.png")
                        res5 = cv2.matchTemplate(
                            FishCaught, Dragonfin, cv2.TM_CCOEFF_NORMED)
                        res6 = cv2.matchTemplate(
                            FishCaught, Musselback, cv2.TM_CCOEFF_NORMED)
                        res7 = cv2.matchTemplate(
                            FishCaught, Pygmy, cv2.TM_CCOEFF_NORMED)
                        res8 = cv2.matchTemplate(
                            FishCaught, Bonescale, cv2.TM_CCOEFF_NORMED)
                        loc5 = np.where(res5 >= .6)
                        loc6 = np.where(res6 >= .6)
                        loc7 = np.where(res7 >= .6)
                        loc8 = np.where(res8 >= .6)

                        DragonfinBreakout = 0
                        for pt in zip(*loc5[::-1]):
                            if (DragonfinBreakout == 0):
                                DragonfinCaught = DragonfinCaught + 1
                                print("Dragonfin Caught")
                                DragonfinBreakout = 1
                        MusselbackBreakout = 0
                        for pt in zip(*loc6[::-1]):
                            if (MusselbackBreakout == 0):
                                MusselbackCaught = MusselbackCaught + 1
                                print("Musselback Caught")
                                MusselbackBreakout = 1
                        PygmyBreakout = 0
                        for pt in zip(*loc7[::-1]):
                            if (PygmyBreakout == 0):
                                PygmyCaught = PygmyCaught + 1
                                print("Pygmy Caught")
                                PygmyBreakout = 1
                        BonescaleBreakout = 0
                        for pt in zip(*loc8[::-1]):
                            if (BonescaleBreakout == 0):
                                BonescaleCaught = BonescaleCaught + 1
                                print("Bonescale Caught")
                                BonescaleBreakout = 1

                        time.sleep(0.1)
                        LastCast = time.time()
                        autoit.mouse_click("left", 603, 466)
                        autoit.mouse_move(666, 498)
                        totalCasts = totalCasts + 1
                        DisplayTooltip(totalCasts, DragonfinCaught, MusselbackCaught,
                                    PygmyCaught, TimeElapsed, CatchAdjustment)
                        time.sleep(3)
                        break
                    """
                Mean = np.mean(BobberArray)    
                Max = max(BobberArray)
                print("Average of BobberArray: " + str(Mean))
                print("Max of BobberArray: " + str(Max))
                print("Midway between: " + str(.95*Max))

                # Add 1 to Length of # of bobbers found. If Length == 1, the program will stop monitoring the bobber and cast a new line
                Length = Length + 1

        
        cv2.imwrite('result.png', Screen)
    except Exception as e:
        print(e)
