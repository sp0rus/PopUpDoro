"""Config file for PopUpDoro"""

import os

#Times for work/break periods (measured in seconds)
pomodoro = 1500
shortbreak = 300
longbreak = 900

#Time for pop-up notification timeout (measured in milliseconds)
timeout = 5000

#Media files to use (sounds and icon)
tomato = os.path.abspath(os.path.curdir) + '/media/pomodoro.png'
pomoalert = os.path.abspath(os.path.curdir) + '/media/1.wav'
shortalert = os.path.abspath(os.path.curdir) + '/media/2.wav'
longalert = os.path.abspath(os.path.curdir) + '/media/3.wav'

#number of pomodoros to complete before a long break
longbreakafter = 4
