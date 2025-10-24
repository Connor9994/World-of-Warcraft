# 24/7 Fishing Bot (Classic and/or Normal)

![GitHub stars](https://img.shields.io/github/stars/Connor9994/World-of-Warcraft?style=social) ![GitHub forks](https://img.shields.io/github/forks/Connor9994/World-of-Warcraft?style=social) ![GitHub issues](https://img.shields.io/github/issues/Connor9994/World-of-Warcraft) 

![Screen](https://github.com/Connor9994/World-of-Warcraft/assets/39637206/3f3c7592-750e-44f4-8a5d-ee836b303504)

An automated fishing bot for World of Warcraft that uses computer vision and input automation to handle the fishing process.

## Overview

This Python script automates the fishing process in World of Warcraft by:
- Detecting the fishing bobber in the water
- Monitoring for visual changes (splashes) indicating a fish has bitten
- Automatically clicking when a fish is caught
- Managing fishing-related buffs and consumables

## Features

### Core Fishing Automation
- **Bobber Detection**: Uses OpenCV template matching to locate the fishing bobber on screen
- **Splash Detection**: Monitors for visual changes using Root-Mean-Squared (RMS) difference analysis
- **Automatic Casting**: Re-casts fishing line when no bite occurs within time limits
- **Anti-AFK**: Random mouse movements to prevent AFK detection

### Buff Management
- **Bait Application**: Automatically reapplies fishing bait every 10 minutes
- **Beer Consumption**: Automatically drinks beer buff every 3 minutes
- **Fishing Gear**: Automatically uses fishing-related items every 5 minutes
- **Trash Removal**: Sells/Removes Trash automatically

## Requirements

### Python Dependencies
```
autoit
pyautogui
opencv-python
numpy
Pillow
pywin32
```

### System Requirements
- Windows OS
- World of Warcraft client
- Fixed screen resolution (configured in config file)

## Configuration

The script uses a `config.ini` file with the following sections:

### Screen Settings
- `BobberName`: Image file for bobber template
- Screen coordinates and dimensions for screenshot regions
- Fishing pole hotkey position
- AFK mouse movement boundaries

### Fishing Prep
- `MasterSwitch`: Global on/off switch
- `BaitOn`, `BeerOn`, `FishOn`: Toggle individual features

### Sensitivity Settings
- Bobber detection sensitivity
- Bait/Beer/Fish item detection thresholds
- Image difference sensitivity for splash detection

## How It Works

1. **Initialization**: Brings WoW window to foreground and initializes timers
2. **Main Loop**:
   - Checks and applies buffs/consumables based on timers
   - Screenshots the game area and detects bobber position
   - Monitors bobber area for visual changes indicating fish bites
   - Right-clicks bobber when splash detected
   - Re-casts fishing line automatically
   - Performs anti-AFK mouse movements

3. **Image Processing**: Uses OpenCV template matching and RMS difference calculations to detect visual changes in the bobber area

## Usage

1. Configure `config.ini` with your screen settings and preferences
2. Ensure WoW is running in windowed mode with consistent UI
3. Position your character at a fishing spot
4. Run the script
5. The bot will handle fishing automatically

## Important Notes

⚠️ **Use at your own risk** - This may violate World of Warcraft's Terms of Service

- Designed for educational purposes
- Test in safe areas before use
- Monitor the bot during operation
- Adjust sensitivities based on your game environment
