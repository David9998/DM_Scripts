#!/bin/zsh
# script name: Filename_with_space.sh
#
# This script mainly rename the files name which whitespaces.
# e.g. 29-4 Querying for the most similar images for car image.vtt 
# Usage: Filename_with_space.sh vtt  [Rename file with postfix .vtt to .srt ]
#
IFS=$(echo -en "\n\b”)
arg=$1

 for f in `ls *.$arg`
 do
        echo "Renaming $f "
        new_f=${f%.*}.srt
        mv $f $new_f
        echo "rename $f $new_f"
 done
 
