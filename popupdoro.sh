#!/bin/sh

#PopUpDoro - An Ubuntu/Debian Pomodoro Notifier

#Get current directory name
C=$(readlink -f "$0")
CDIR=`dirname "$C"`

#source file with functions for timers
. $CDIR/functions.sh
. $CDIR/settings.sh

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
