#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise
# it uses the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files are sorted by their owner
#setuid
echo "Setuid files:"
echo "============="
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
echo ""

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
# The second listing should display after the setuid file list, and be formatted similar to the
# setuid file list including having a title
# use the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files should be sorted by their group
#setgid
echo "Setgid files:"
echo "============"
find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 3#this set of command find all the
#executable files in the system then filter out the files that has set for group permission i.e. 2000 which output setgid files and then list that using ls and then sort them by 3rd column
echo ""


# Task 2 for the exercise is to modify it to also display the 10 largest regular files in the system, sorted by their sizes
# The listing should only have the file name, owner, and size in MBytes and be displayed after the listings of
# setuid and setgid files and should have its own title
# use the find command to generate the list of files with their sizes, with an error redirect to /dev/null
# use cut or awk to display only the output desired
# 10 largest regular files sorted by their sizes
echo "10 largest regular files in the system, sorted by their sizes"
echo "============================================================="
find / -type f -exec ls -l --block-size=MB {} + 2>/dev/null | sort -k 5 -hr | head -n 10 | awk '{print $3, $5, $9}'
#Here in the first part of the command we list all the files in the system with there sizes in MB
#in the second part we sort the output by 5th column i.e. by size and the arrange them in decending order
#in the next part we just print top 10 of the results
#and in the next part we just print 3rd 5th and 9th coloumn of our previous result

echo ""







# commands to display a second title
# find command modified as needed
# sort command to sort files appropriately

# commands to display a third title
# commands to make a list of the 10 biggest files
# sort/ format whatever to display the list properly
