#!/bin/sh
​
# ╰(✿´⌣`✿)╯ Bashing Script by Krishan Jitendrabhai + Kia Choi ╰(✿´⌣`✿)╯
​
# This script will ask for users name and let them choose a bash command.
# Then we provide an example and explanation for the main and sub command.
​
1
# Asking for Users Name
echo " Hello! What is your name? "
read inputName
​
echo "\nWelcome $inputName! ❤ Nice to meet you!"
echo "*✧ ♡(◍•ᴗ•◍)♡ ✧*。( ˊᵕˋ )♡.°⑅"
​
Creating new file with Timestamp
file_name=test_files.txt
touch test_files.txt
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
echo "Current Time: $current_time"
new_fileName=$inputName.$current_time
echo "New FileName: " "$new_fileName"
cp $file_name ~/Desktop/$new_fileName
echo "New file generated with Name + Timestamp"
​
# Asking for users main commands
echo "\n❤ What command would you like to use? ❤"
cat commandDetails.txt
​
while
echo ✿ Please enter a number: ✿
read commandNumber
do
if [ $commandNumber -eq 12 ]; then
    echo Exiting...
    exit 0
fi
​
grep -w $commandNumber commandDetails.txt
​
# Outputting examples of sub commands

echo "\nHere is an example of that command: "
perl -00 -ne "print if /^$commandNumber\.\s+/" subCommandDetails.txt ;
​
done
