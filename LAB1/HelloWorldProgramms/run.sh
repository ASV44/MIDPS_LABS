#!/bin/sh

echo Enter file name
read FILE
case $FILE in
	*.c) gcc $FILE && ./a.out
	     echo -e "\n"
