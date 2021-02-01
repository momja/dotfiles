#!/bin/bash


if [[ $(grep Microsoft /proc/version) ]]; then
	APPDATA='/mnt/c/Users/mjomdal/AppData/Roaming'
	HOME='/mnt/c/Users/mjomdal'
fi

CONFIG_DIR="$HOME/.config"
BACKUP=true



if [[ "$OSTYPE" == "msys" ]] || [[ $(grep Microsoft /proc/version) ]]; then
	echo "Detected Bash or Git-Bash running on Windows"
	
	if $BACKUP; then
		rm -rf $APPDATA/alacritty.backup
		mv -f $APPDATA/alacritty $APPDATA/alacritty.backup
	fi
	cp -avr ./alacritty $APPDATA/

elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "Detected Bash on MacOS"

elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
	echo "Detected Bash on Linux/GNU"
		
fi

if $BACKUP; then
	mv -f $CONFIG_DIR $CONFIG_DIR.backup
fi

if [ ! -d $CONFIG_DIR ]; then
	echo "Making Config Dir at $CONFIG_DIR"
	mkdir $CONFIG_DIR
fi

cp -r ./ $CONFIG_DIR/
