#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar top >>/tmp/example.log 2>&1 & disown

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar dp >>/tmp/example.log 2>&1 & disown

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar hdmi >>/tmp/example.log 2>&1 & disown

echo "Bars launched..."
