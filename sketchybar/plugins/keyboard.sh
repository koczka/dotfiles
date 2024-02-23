#!/usr/bin/env sh
#
CURRENT_LAYOUT=`defaults read ~/Library/Preferences/com.apple.HIToolbox.plist \ 
  AppleSelectedInputSources | egrep -w 'KeyboardLayout Name' | \ 
  cut -d'"' -f4 | cut -d' ' -f2`

sketchybar --set $NAME label="{$CURRENT_LAYOUT}"
