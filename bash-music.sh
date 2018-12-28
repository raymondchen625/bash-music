#!/bin/bash
export BASH_MUSIC_FILE=~/bin/example.mp3
export BASH_MUSCI_PLAY_SCRIPT=~/bin/bash-music-play.sh
function playMusic ()
{
  if [ "on" = "$MUSIC_ON_COMMAND" ]; then
    $BASH_MUSCI_PLAY_SCRIPT `history 1 | head -1 | awk '{print $2}'`
  fi
}
alias musicon='export MUSIC_ON_COMMAND=on;trap playMusic DEBUG'
alias 🎶🎶='export MUSIC_ON_COMMAND=on;trap playMusic DEBUG'
alias musicoff='export MUSIC_ON_COMMAND=off;trap - DEBUG'
alias 🔇🔇='export MUSIC_ON_COMMAND=off;trap - DEBUG'
