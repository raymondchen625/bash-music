# Play music in background when you run a bash command
# Installation
* Copy all the files to your location, e.g. ~/bin/
* Add a source line to your ~/.profile (macos) or ~/.bash_profile (Linux, need to change to the respective music player if running on Linux):
```
source ~/bin/bash-music.sh
```
* Edit your bash-music.sh, make sure the first two lines have correct paths:

BASH_MUSIC_FILE and BASH_MUSCI_PLAY_SCRIPT

* Restart a new shell, then you will have aliases to turn the feature on/off:
```
musicon or 🎶🎶 : on
musicoff or 🔇🔇 : off
```
