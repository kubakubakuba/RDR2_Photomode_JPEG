#!/usr/bin/sh

DIRECTORY='.'
CONVERTOR='./ragephoto-extract'

for FILE in "$DIRECTORY"/PRDR*; do
if [ -f "$FILE" ]; then
	FILENAME=$(basename -- "$FILE")
	OUTPUT="${FILENAME}.jpg"
	$CONVERTOR "$FILE" "$DIRECTORY/$OUTPUT"
	echo "Processed $FILE -> $DIRECTORY/$OUTPUT"
fi
done
