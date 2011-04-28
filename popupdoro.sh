#!/bin/sh

#PopUpDoro - An Ubuntu/Debian Pomodoro Notifier

#Times for each segment. Measured in seconds.
POMODORO=1500
SHORTBREAK=300
LONGBREAK=900

#Paths to external media used in alerts
TOMATO=/home/sp0rus/Code/Bash/pomodoro/pomodoro.png
SOUNDALERT=/usr/share/sounds/purple/login.wav

#number of pomodoros to complete before a long break
LONGBREAKAFTER=4

while [ true ]; do
	COUNTER=0
	while [ "$COUNTER" -lt "$LONGBREAKAFTER" ]; do
		#pomodoro work timer
		DISPLAY=:0 notify-send \
			-t 1000 \
			-i $TOMATO \
			"New Pomodoro starts" \
			"You have 25 minutes to work." \
			; aplay $SOUNDALERT
		sleep $POMODORO

		COUNTER=$((COUNTER+1))

		if [ $COUNTER -lt $LONGBREAKAFTER ]; then
			#pomodoro short break timer
			DISPLAY=:0 notify-send \
				-t 1000 \
				-i $TOMATO \
				"Pomodoro ends" \
				"Take five!" \
				; aplay $SOUNDALERT
			sleep $SHORTBREAK
		fi
	done #end 4 work periods

	#pomodoro long break
		DISPLAY=:0 notify-send \
			-t 1000 \
			-i $TOMATO \
			"That's Four Pomodoros!" \
			"Take a 15 minute break" \
			; aplay $SOUNDALERT
		sleep $LONGBREAK
done #end main
