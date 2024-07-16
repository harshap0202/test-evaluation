#!/bin/bash

read -p "Enter the hour (in 24-hour format HH:MM) : " INP_HOUR

if ! [[ $INP_HOUR =~ ^([01][0-9]|2[0-3]):[0-5][0-9]$ ]]
then
    echo "Invalid hour. Enter valid hour in 24-hour format (e.g. 14:56)"
    exit 1
fi

HOUR=$(echo "$INP_HOUR" | tr -d :)

if [ $HOUR -ge 0000 ] && [ $HOUR -le 0600 ]; then 
    echo "Early Morning"
elif [ $HOUR -ge 0601 ] && [ $HOUR -le 1300 ]; then
    echo "Morning"
elif [ $HOUR -ge 1301 ] && [ $HOUR -le 1800 ]; then
    echo "Afternoon"
elif [ $HOUR -ge 1801 ] && [ $HOUR -le 2359 ]; then
    echo "Late Night"
else
    echo "Invalid hour. Enter valid hour in 24-hour format (e.g. 14:56)"
    exit 1
fi