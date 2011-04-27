#pomodoro work timer
DISPLAY=:0 notify-send -t 1000 -i /home/sp0rus/Code/Bash/pomodoro/pomodoro.png "New Pomodoro starts" "You have 25 minutes to work."; aplay /usr/share/sounds/purple/login.wav
# 25 minutes timer
sleep 1500

#pomodoro short break timer
DISPLAY=:0 notify-send -t 1000 -i /home/sp0rus/Code/Bash/pomodoro/pomodoro.png "Pomodoro  ends" "Take a break!"; aplay /usr/share/sounds/purple/login.wav
