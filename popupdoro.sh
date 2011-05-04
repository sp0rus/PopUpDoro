#!/bin/sh

#PopUpDoro - An Ubuntu/Debian Pomodoro Notifier

#Get current directory name
C=$(readlink -f "$0")
CDIR=`dirname "$C"`

#source file with functions for timers
. $CDIR/functions.sh

#Times for each segment. Measured in seconds.
POMODORO=1500
SHORTBREAK=300
LONGBREAK=900

#Time for notification fadeout.  Measured in milliseconds.
FADEOUT=1000

#Paths to external media used in alerts
TOMATO=$CDIR/pomodoro.png
SOUNDALERT=$CDIR/yoursound.wav

#number of pomodoros to complete before a long break
LONGBREAKAFTER=4

#Begin main script
while [ true ]; do
	COUNTER=0
	while [ "$COUNTER" -lt "$LONGBREAKAFTER" ]; do
                pomodoro
		COUNTER=$((COUNTER+1))

		if [ $COUNTER -lt $LONGBREAKAFTER ]; then
			shortbreak
		fi
	done #end 4 work periods

	longbreak
		
done #end main
