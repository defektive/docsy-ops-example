#! /bin/bash

cd .hugo

OP_NOTE_DIR="../docs/updates/operations/"
NOTE_COUNT=$(ls $OP_NOTE_DIR | wc -l)
PADDED_NOTE_COUNT=$(printf %04d $NOTE_COUNT)
DATE=$(date +'%Y-%m-%d_%H%I%S')
WHO=$(git config user.name)
EXTRA=$(echo "$@" | sed 's/[^0-9a-zA-Z_\-\. ]*//g')

hugo new "../${OP_NOTE_DIR}${PADDED_NOTE_COUNT} ${WHO} ${EXTRA}.md" -k update "$WHO $EXTRA"
