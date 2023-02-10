#!/bin/bash

# options to be displayed
option0="Pantalla"
option1="Area"
option2="Ventana"

# options to be displyed
options="$option0\n$option1\n$option2"

selected="$(echo -e "$options" | rofi -lines 3 -dmenu -p "scrot")"
case $selected in
    $option0)
        cd ~/Imágenes/Screenshots/ && sleep 1 && scrot;;
    $option1)
        cd ~/Imágenes/Screenshots/ && scrot -s;;
    $option2)
        cd ~/Imágenes/Screenshots/ && sleep 1 && scrot -u;;
esac

