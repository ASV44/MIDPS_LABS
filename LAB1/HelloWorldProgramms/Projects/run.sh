#!/bin/sh

echo Enter project name
read PROJECT
for FILE in ${PROJECT}/* ; do
	case $FILE in
		*.c) gcc $FILE -o ${FILE%.*} && ./${FILE%.*}
			 	;;
		*.py) python3 $FILE
			 		;;
		*.cpp) g++ $FILE -o ${FILE%.*} && ./${FILE%.*}
		      ;;
		*.java) mkdir -p java/class
						javac -d java/class $FILE
						cd java/class
						for CLASS in * ; do
							java ${CLASS%.*}
						done
						;;
		*.rb) ruby $FILE
					;;
	esac
done
