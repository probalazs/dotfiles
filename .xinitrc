[[ -f ~/.Xresources ]] && xrdb ~/.Xresources

feh --bg-scale ~/.local/wallpaper.jpg

exec ck-launch-session dbus-launch --sh-syntax --exit-with-session i3
