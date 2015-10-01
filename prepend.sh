#!/bin/bash
#  Script.sh
#
#  Created by Marc Levine on 7/7/14.
#
#

if [ -z $1 ]
then
echo "using parent directory name"
fname=$(pwd)
f2=${fname##*/}
h="$f2""_"
else
h="$1"
fi

for f in *
do
echo "$f -> $h$f"
mv "$f" "$h$f"
done