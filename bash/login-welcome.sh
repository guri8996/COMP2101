#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

########################
#     Variables     #
#######################


echo "Enter your name:" #printing "enter your name"
read USER               #taking input from User for user name and saving it in variable USER

hostname=$(hostname)    #Generating dynmaic value for hostname


############  date and time  ############


day=$(date +"%A")    #extracting weekday part from date using %A and saving it in variable day
date=$(date +"%I:%M %p")    ##extracting Hours Minutes and Seconds from the time in date and then formating it using %I for displaying Hour %M for displaying minute part and then %p for AM/PM and saving it in variable date

############  message for every weekday  ############
#using if and elif for printing variable message for every differnt week day
if [ $day == "Monday" ]
then
  title="Have fresh juice today Stay Healthy"

elif [ $day == "Tuesday"  ]
then
  title="Drink atleast 2.5 litres of water"

elif [ $day == "Wednesday" ]
then
  title="Have some colorful fruits"

elif [ $day == "Thursday" ]
then
  title="Green vegetables are the best "

elif [ $day == "Friday" ]
then
  title="Its weekend go out and party"

elif [ $day == "Saturday" ]
then
  title="Its weekend go out and party"

else
  title="Sleepy day"

fi

###############################################
#                   Main                      ###printing $hostname and $USER, $day and $date
###############################################

login="Welcome to planet $hostname, $title $USER!
It is $day at $date."
 cowsay $login
