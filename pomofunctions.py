"""Functions for use in the PopUpDoro program"""

import time
import pomosettings
try:
    import pynotify
except ImportError:
    print "You don't have pynotify installed."
    exit()

ICON = pomosettings.tomato
TIMEOUT = pomosettings.timeout

def notification(title, message):
    """Function calls pynotify to pop up a notification."""
    if pynotify.init("PopupDoro"):
        popup = pynotify.Notification(title, message, ICON)
        popup.set_timeout(TIMEOUT)
        popup.show()
    else:
        print "there was a problem initializing the pynotify module"

def pomodoro():
    """Function for a work period"""
    notification("New Pomodoro starts", "You have 25 minutes to work.")
    time.sleep(pomosettings.pomodoro)

def shortbreak():
    """Function for a short break"""
    notification("Pomodoro ends", "Take five!")
    time.sleep(pomosettings.shortbreak)

def longbreak():
    """Function for a long break"""
    notification("That's Four Pomodoros!", "Take a 15 minute break")
    time.sleep(longbreak)
