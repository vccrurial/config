pipewire &
pipewire-pulse &
xcape -e 'Caps_Lock=Escape' -t200
sxhkd &
xset r rate 190 35
nm-applet &
volctl &
wallset void.png
xrdb -merge ~/.Xresources
picom -b

dbus-run-session awesome
