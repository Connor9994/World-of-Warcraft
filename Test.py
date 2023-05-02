from tkinter import *
from PIL import ImageTk, Image
import os

# create the window
root = Tk()

# make the window not resizable
root.resizable(False, False)

# set window title
root.title("My Photo")

os.chdir(os.getcwd())

# set image location
my_img = ImageTk.PhotoImage(Image.open(r"myimage.png"))

# create an image label
my_label = Label(image=my_img)

# add image to the window
my_label.pack()

# run the window
root.mainloop()