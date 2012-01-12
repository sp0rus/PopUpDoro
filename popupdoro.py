#!/usr/bin/env python
"""PopUpDoro - A pomodoro notifier utilizing libnotify"""

import sys
import pomofunctions
import pomosettings

def main():
    longbreakafter = pomosettings.longbreakafter

    while 1:
        count = 0
        while count < longbreakafter:
            pomofunctions.pomodoro()
            count += 1
            if count < longbreakafter:
                pomofunctions.shortbreak()
        pomofunctions.longbreak()
        return 0

if __name__ == '__main__':
    sys.exit(main())
