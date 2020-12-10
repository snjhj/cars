#! /bin/bash
# cars.sh
# William McDermott

INPUT=0
while [ "$INPUT" -ne "3" ] 
do
	echo "Enter 1 to add a car"
	echo "Enter 2 to display list of cars"
	echo "Enter 3 to quit and exit the program."
	read -r INPUT 
	case "$INPUT" in
		"1")
			echo "Enter the year of the car."
			read -r YEAR
			echo "Enter the make of the car."
			read -r MAKE
			echo "Enter the model of the car."
			read -r MODEL
			NEWCAR="$YEAR:$MAKE:$MODEL"
			echo "$NEWCAR" >> My_old_cars;;
		"2") 
			sort My_old_cars;;
		"3") 
			echo "Goodbye, come again!";;
		*) 
			echo "Invalid input, Try again.";;
	esac
done	
