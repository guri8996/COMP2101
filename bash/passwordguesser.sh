#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

######### Task 1 ##########
testPassword=password

echo "Guess a password:"
read guessPassword            #user input for password

######### Task 2 ##########
#using if else statement if user get the right password it prints correct password else wrong password
if [ $guessPassword == $testPassword ]
then
  echo "correct password"
else
  echo "Incorrect Password."
fi
######### Task 3 ########

#using if else statement if user get the right password it prints correct password else wrong password and try again for 5 times

if [ $guessPassword == $testPassword ]
then
  echo "Correct Password!."
else
  echo "Incorrect password! Try again:"
  read guessPassword
  if [ $guessPassword == $testPassword ]
  then
    echo "Correct Password!."
  else
    echo "Incorrect password! Try again:"
    read guessPassword

    if [ $guessPassword == $testPassword ]
    then
      echo "You entered the correct Password!! Thank You."]
    else
      echo "Incorrect password! Try again:"
      read guessPassword

      if [ $guessPassword == $testPassword ]
      then
        echo "You entered the correct Password!! Thank You."]
      else
        echo "Incorrect password! Try again:"
        read guessPassword

        if [ $guessPassword == $testPassword ]
        then
          echo "You entered the correct Password! Thank You."]
        else
          echo "Incorrect password! You have exceeded you number of tries to correct password. see you later"
        fi
      fi
    fi
  fi
fi
