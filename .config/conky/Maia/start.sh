#!/bin/bash

export LANG=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export DBUS_SESSION_BUS_ADDRESS="unix:path=${XDG_RUNTIME_DIR}/bus"

echo "$(date): Conky autostart running..." >> /tmp/conky-autostart.log

# Finaliza instâncias antigas
killall conky
sleep 2s

# Aguarda Wayland e GNOME estarem prontos
sleep 30s

# Inicia Conkys com delay entre eles
conky -c $HOME/.config/conky/Maia/Maia1.conf &> /dev/null &
sleep 1s
conky -c $HOME/.config/conky/Maia/Maia2.conf &> /dev/null &
sleep 1s
conky -c $HOME/.config/conky/Maia/Maia3.conf &> /dev/null &

exit
