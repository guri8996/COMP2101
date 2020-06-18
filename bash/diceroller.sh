#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling the dice for 1 time...
$(( RANDOM % 6 + 1)) rolled
"
#######################################

echo "Rolling the dice for 11 times once for each lettter in GURINDERJIT"
echo "
$(( RANDOM % 6 + 1))-G
$(( RANDOM % 6 + 1))-U
$(( RANDOM % 6 + 1))-R
$(( RANDOM % 6 + 1))-I
$(( RANDOM % 6 + 1))-N
$(( RANDOM % 6 + 1))-D
$(( RANDOM % 6 + 1))-E
$(( RANDOM % 6 + 1))-R
$(( RANDOM % 6 + 1))-J
$(( RANDOM % 6 + 1))-I
$(( RANDOM % 6 + 1))-T
"
#$(( RANDOM % 6 + 1)) gives a random number from 1 to 6
#######################################
