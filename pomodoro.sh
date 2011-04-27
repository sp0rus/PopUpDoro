#!/bin/bash

COUNTER=0
WORKNUMBER=4

while [ "$COUNTER" -lt "$WORKNUMBER" ]
do
	#pomodoro work timer
	DISPLAY=:0 notify-send \
		-t 1000 \
		-i /home/sp0rus/Code/Bash/pomodoro/pomodoro.png \
		"New Pomodoro starts" \
		"You have 25 minutes to work." \
		; aplay /usr/share/sounds/purple/login.wav
	# 25 minutes until break
	sleep 1500

	let "COUNTER += 1"

	#pomodoro short break timer
	DISPLAY=:0 notify-send \
		-t 1000 \
		-i /home/sp0rus/Code/Bash/pomodoro/pomodoro.png \
		"Pomodoro ends" \
		"Take a break!" \
		; aplay /usr/share/sounds/purple/login.wav
	#5 minutes for short break
	sleep 300

done

#pomodoro long break
	DISPLAY=:0 notify-send \
		-t 1000 \
		-i /home/sp0rus/Code/Bash/pomodoro/pomodoro.png \
		"That's Four Pomodoros!" \
		"Take a long break!" \
		; aplay /usr/share/sounds/purple/login.wav
	#15 minutes for short break
	sleep 900
