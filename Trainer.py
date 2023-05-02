import autoit
import time
import pyautogui
import cv2
import numpy as np
import matplotlib.pyplot as plt
import os
import math
import operator
import functools
import wave
import random
import configparser
import win32gui
from PIL import ImageTk, ImageChops
from PIL import Image as Im
from tkinter import *
import threading

# multi-threading example
import threading
root = Tk()

def window():
    config = configparser.ConfigParser()
    config.read('config.ini')
    BobberName = config.get('Screen', 'BobberName')
    root.resizable(False, False)
    root.title("Bobber")
    root.attributes("-topmost", True)
    Bobber = cv2.imread(BobberName)
    w, h = Bobber.shape[:-1]
    x = config.getint('Screen', 'BobberPreviewLocationX')
    y = config.getint('Screen', 'BobberPreviewLocationY')
    root.geometry(str(w+15) + 'x' + str(h+15) + '+' + str(x) + '+' + str(y))
    os.chdir(os.getcwd())
    my_img = ImageTk.PhotoImage(Im.open(r"BobberWatcher.png"))
    my_label = Label(image=my_img)
    my_label.pack()
    root.mainloop()

# create thread
t = threading.Thread(target=window)

# start thread
t.start()

#Bring WoW Client to the Foreground
app_handle = win32gui.FindWindow(None, "World of Warcraft")
win32gui.SetForegroundWindow(app_handle)

def change_img():
   img2=ImageTk.PhotoImage(Im.open(r"BobberWatcher.png"))
   label= Label(root,image= img2)
   #label.configure(image=img2)
   #label.image=img2

# Root-Mean-Squared Difference Function
# https://gist.github.com/sente/ea44cf014c5776a1a5bf

def rmsdiff(im1, im2):
    h = ImageChops.difference(im1, im2).histogram()
    return math.sqrt(functools.reduce(operator.add,
                                      map(lambda h, i: h*(i**2), h, range(256))
                                      ) / (float(im1.size[0]) * im1.size[1]))

def Main():
    # Start a timer
    LastCast = time.time()

    # Start a timer
    LastBait = time.time() - 600

    # Start a timer
    LastFish = time.time() - 300

    # Start a timer
    LastBeer = time.time() - 180

    # Start a timer
    TimeElapsed = time.time()

    # Loop until broken
    while True:
        config = configparser.ConfigParser()
        config.read('config.ini')
        BobberName = config.get('Screen', 'BobberName')
        ScreenXStart = config.getint('Screen', 'ScreenXStart')
        ScreenYStart = config.getint('Screen', 'ScreenYStart')
        ScreenXForScreenshot = config.getint('Screen', 'ScreenXForScreenshot')
        ScreenYForScreenshot = config.getint('Screen', 'ScreenYForScreenshot')
        FishingPoleX = config.getint('Screen', 'FishingPoleX')
        FishingPoleY = config.getint('Screen', 'FishingPoleY')
        AFKXMin = config.getint('Screen', 'AFKXMin')
        AFKYMin = config.getint('Screen', 'AFKYMin')
        AFKXMax = config.getint('Screen', 'AFKXMax')
        AFKYMax = config.getint('Screen', 'AFKYMax')
        MasterSwitch = config.getint('Fishing Prep', 'MasterSwitch')
        BaitOn = config.getint('Fishing Prep', 'BaitOn')
        BeerOn = config.getint('Fishing Prep', 'BeerOn')
        FishOn = config.getint('Fishing Prep', 'FishOn')
        
        try:
            baitBreakout = 0
            if ((time.time() - LastBait > 600) and (BaitOn == 1) and (MasterSwitch != 0)):
                print("Bait Expired")
                LastBait = time.time()
                autoit.send("2")
                time.sleep(2)
                imageB = pyautogui.screenshot(region=(ScreenXStart, ScreenYStart, ScreenXForScreenshot,ScreenYForScreenshot))
                imageB.save("Screen.png")
                Screen = cv2.imread("Screen.png")
                Bait = cv2.imread("Bait.png")
                res2 = cv2.matchTemplate(Screen, Bait, cv2.TM_CCOEFF_NORMED)
                loc2 = np.where(res2 >= .6)
                for pt in zip(*loc2[::-1]):
                    if (baitBreakout == 0):
                        BaitX = pt[0] + 25
                        BaitY = pt[1] + 25
                        baitBreakout = 1
                        print("Found bait at (" + str(BaitX) + "," + str(BaitY) + ")")
                        autoit.mouse_move(BaitX, BaitY)
                        autoit.mouse_click("right")
                        autoit.mouse_click("left",FishingPoleX, FishingPoleY)
                        time.sleep(3)
                autoit.send("2")
                autoit.send("1")
                LastCast = time.time()
                time.sleep(1)

            fishBreakout = 0
            if ((time.time() - LastFish > 300) and (FishOn == 1) and (MasterSwitch != 0)):
                print("Fish Expired")
                LastFish = time.time()
                imageF = pyautogui.screenshot(region=(ScreenXStart, ScreenYStart, ScreenXForScreenshot,ScreenYForScreenshot))
                imageF.save("Screen.png")
                Screen = cv2.imread("Screen.png")
                Fish = cv2.imread("Fish.png")
                res2 = cv2.matchTemplate(Screen, Fish, cv2.TM_CCOEFF_NORMED)
                loc2 = np.where(res2 >= .7)
                for pt in zip(*loc2[::-1]):
                    if(fishBreakout == 0):
                        FishX = pt[0] + 25
                        FishY = pt[1] + 25
                        fishBreakout = 1
                        print("Found fish at (" + str(FishX) + "," + str(FishY) + ")")
                        for x in range(10):
                            autoit.mouse_move(FishX, FishY)
                            autoit.mouse_click("right")
                            time.sleep(1.6)
                autoit.send("1")
                LastCast = time.time()
                time.sleep(1)

            beerBreakout = 0
            if ((time.time() - LastBeer > 180) and (BeerOn == 1) and (MasterSwitch != 0)):
                print("Beer Expired")
                LastBeer = time.time()
                imageBe = pyautogui.screenshot(region=(ScreenXStart, ScreenYStart, ScreenXForScreenshot,ScreenYForScreenshot))
                imageBe.save("Screen.png")
                Screen = cv2.imread("Screen.png")
                Beer = cv2.imread("Beer.png")
                res2 = cv2.matchTemplate(Screen, Beer, cv2.TM_CCOEFF_NORMED)
                loc2 = np.where(res2 >= .7)
                for pt in zip(*loc2[::-1]):
                    if(beerBreakout == 0):
                        BeerX = pt[0] + 25
                        BeerY = pt[1] + 25
                        beerBreakout = 1
                        autoit.mouse_move(BeerX, BeerY)
                        autoit.mouse_click("right")
                autoit.send("1")
                LastCast = time.time()
                time.sleep(1)

            if (time.time() - LastCast > 22):
                print("Time exceded fishing timer")
                LastCast = time.time()
                autoit.send("1")
                autoit.mouse_move(random.randint(AFKXMin,AFKXMax),random.randint(AFKYMin,AFKXMin))
                time.sleep(1)

            # Screenshot right monitor
            imageMain = pyautogui.screenshot(region=(ScreenXStart, ScreenYStart, ScreenXForScreenshot, ScreenYForScreenshot))
            imageMain.save("Screen.png")

            # Import Bobber + Entire Screen
            Bobber = cv2.imread(BobberName)
            Screen = cv2.imread("Screen.png")

            # Use the OpenCV function matchTemplate() to search for matches between an image patch and an input image
            res1 = cv2.matchTemplate(Screen, Bobber, cv2.TM_CCOEFF_NORMED)
            loc1 = np.where(res1 >= .5)  

            Length = 0
            for pt in zip(*loc1[::-1]):
                if (Length == 0):
                    BobberX = pt[0]
                    BobberY = pt[1]
                    print("Watching Bobber at (" +
                        str(BobberX) + "," + str(BobberY) + ")")
                    
                    while True:
                        if (time.time() - LastCast > 22):
                            print("Time exceded fishing timer")
                            LastCast = time.time()
                            autoit.send("1")
                            autoit.mouse_move(random.randint(AFKXMin,AFKXMax),random.randint(AFKYMin,AFKYMax))
                            time.sleep(1)
                            break

                        # Smaller screenshot of just the water
                        imageBob = pyautogui.screenshot(
                            region=(BobberX, BobberY, 48, 49))
                        imageBob.save("BobberWatcher.png")
                        time.sleep(.1)
                        imageBob = pyautogui.screenshot(
                            region=(BobberX, BobberY, 48, 49))
                        imageBob.save("BobberWatcherLast.png")

                        # Root-Mean-Squared Difference Function: Compare the two photos
                        if (os.path.exists(r"BobberWatcherLast.png")):
                            im1 = ImageChops.Image.open(
                                r"BobberWatcher.png")
                            im2 = ImageChops.Image.open(
                                r"BobberWatcherLast.png")
                            ImageDifferenceLast = rmsdiff(im1, im2)
                            print(ImageDifferenceLast)
                        
                        if (ImageDifferenceLast > 25):
                            LastCast = time.time()
                            print("Splash")
                            autoit.mouse_click("right", BobberX+25, BobberY+25)
                            autoit.send("1")
                            autoit.mouse_move(random.randint(AFKXMin,AFKXMax),random.randint(AFKYMin,AFKYMax))
                            time.sleep(1)
                            break

                        if (ImageDifferenceLast < 5):
                            #Find a better angle
                            break
                    Length = 1

            w, h = Bobber.shape[:-1]

        except Exception as e:
            print(e)   

# create thread
t2 = threading.Thread(target=Main)
t2.start()