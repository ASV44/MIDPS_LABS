#!/bin/sh

echo Enter file name
read FILE
case $FILE in
	*.c) gcc $FILE -o ${FILE%.*} && ./${FILE%.*}
			 ;;
	*.py) python3 $FILE
			 ;;
esac
