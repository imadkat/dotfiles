#!/usr/bin/bash

cat ~/.local/share/extensions | while read extension || [[ -n $extension ]];
do 
	code --install-extension $extension --force
done
