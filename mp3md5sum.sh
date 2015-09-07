#!/bin/bash

# mp3md5sum.sh: md5 sum of just the audio portion of an mp3 file (no id3 tags).
# see https://github.com/pepaslabs/mp3md5sum

set -e
set -o pipefail

OUTFILE=`mktemp -u /tmp/mp3md5sum.XXXXXX.mp3`
# thanks to http://stackoverflow.com/a/20202233/558735
ffmpeg -loglevel quiet -i "$1" -map 0:a -codec:a copy -map_metadata -1 "$OUTFILE"
md5sum "$OUTFILE" | awk '{ print $1 }'
rm "$OUTFILE"

