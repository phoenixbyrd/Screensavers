#!/bin/sh

export DISPLAY=:0
# Wanted trigger timeout in milliseconds.
IDLE_TIME=$((5*60*1000))

# Sequence to execute when timeout triggers.
trigger_cmd() {
    WINEPREFIX=/home/pi/.screensavers wine /home/pi/.screensavers/drive_c/windows/RetroSciFi_Blue.scr /s
}

sleep_time=$IDLE_TIME
triggered=false

# ceil() instead of floor()
while sleep $(((sleep_time+999)/1000)); do
    idle=$(xprintidle)
    if [ $idle -ge $IDLE_TIME ]; then
        if ! $triggered; then
            trigger_cmd
            triggered=true
            sleep_time=$IDLE_TIME
        fi
    else
        triggered=false
        # Give 100 ms buffer to avoid frantic loops shortly before triggers.
        sleep_time=$((IDLE_TIME-idle+100))
    fi
done
