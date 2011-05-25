#!/bin/sh

#Function for work period
pomodoro()
{
	DISPLAY=:0 notify-send \
		-t $FADEOUT \
		-i $TOMATO \
		"New Pomodoro starts" \
		"You have 25 minutes to work." \
		; aplay $SOUNDALERT
	sleep $POMODORO
}

#Function for short break
shortbreak()
{
        DISPLAY=:0 notify-send \
		-t $FADEOUT \
		-i $TOMATO \
		"Pomodoro ends" \
		"Take five!" \
		; aplay $SOUNDALERT
	sleep $SHORTBREAK
}

#Function for long break
longbreak()
{
        DISPLAY=:0 notify-send \
		-t $FADEOUT \
		-i $TOMATO \
		"That's Four Pomodoros!" \
		"Take a 15 minute break" \
		; aplay $SOUNDALERT
	sleep $LONGBREAK
}