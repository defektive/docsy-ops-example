#! /bin/bash

set -e

function get_caption () {
  # gum is sweet
  # go install github.com/charmbracelet/gum@latest
  # see: https://github.com/charmbracelet/gum
  if which gum > /dev/null 2>&1 ; then
    # we has gum
    caption=$(gum input --placeholder "A Sweet Screenshot Caption")
  else
    echo -n "Caption: "
    read caption
  fi

  if [ -z "$caption" ]; then
    echo "no caption... exiting"
    exit 1
  fi

  echo "$caption"
}

function get_path() {
  echo "docs/files/$(date +'%s')__$(echo $1|sed 's/[^0-9a-zA-Z_\-\.]*//g').png"
}

function copy_to_clipboard() {
  if which pbcopy > /dev/null 2>&1 ; then
    echo "$1" | pbcopy
  elif which xclip > /dev/null 2>&1 ; then
    echo need xlip command
  fi
}

caption=$(get_caption)
save_file=$(get_path "$caption")

# need flameshot on mac
# brew install qt6
# brew install cmake
# mkdir ~/opt
# cd ~/opt
# git clone https://github.com/flameshot-org/flameshot.git
# mkdir flameshot/build
# cd flameshot/build
# cmake ../
# make
# mv src/flameshot.app /Applications/Flameshot.app
# Tada!!
if [ -f /Applications/Flameshot.app/Contents/MacOS/flameshot ] ; then
  /Applications/Flameshot.app/Contents/MacOS/flameshot gui -p "$save_file"
elif which screencapture > /dev/null 2>&1 ; then
  screencapture -s "$save_file"
elif which flameshot > /dev/null 2>&1 ; then
  echo need flameshot command
fi

md="![$caption](/$save_file)"

echo $md >> docs/screenshot.md

copy_to_clipboard "$md"

