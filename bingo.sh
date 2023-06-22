#!/usr/bin/bash
#Bingo Number Generator
echo -e "\n~~ Bingo Number Generator ~~\n"
NUMBER=$(( RANDOM%75 + 1 )) #limit RANDOM bu range up to 75

TEXT="The next number is, "
if (( NUMBER <= 15 )) #double paranthesis use <,>,....
then
  echo $TEXT B:$NUMBER
elif [[ $NUMBER -le 30 ]] #squared brackets use -le,-gt,-ne,-eq,...
then
  echo $TEXT I:$NUMBER
elif (( NUMBER < 46 ))
then
  echo $TEXT N:$NUMBER  
elif [[ $NUMBER -lt 61 ]]
then 
   echo $TEXT G:$NUMBER
else
    echo $TEXT O:$NUMBER  
fi