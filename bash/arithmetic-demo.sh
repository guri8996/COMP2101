#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

############################################################
# getting input from the user for 3 numbers
echo "Enter first number"
read firstnum

echo "Enter second number"
read secondnum

echo "Enter third number"
read thirdnum
#############################################################

# calculating sum anf product of those 3 numbers

sum=$((firstnum + secondnum + thirdnum))

product=$((firstnum * secondnum * thirdnum))

#############################################################

# display outputs with appropriate message
cat <<EOF
SUM of three numbers= $sum
PRODUCT of three numbers= $product
EOF
