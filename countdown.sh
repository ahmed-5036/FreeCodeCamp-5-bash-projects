#!/usr/bin/bash
#!/bin/bash 
#Program that counts down to zero from a given argument
#Pass integer argument in terminal as: ./countdown.sh 5
: '
Exptected output for $1=5:
$ ./countdown.sh 5

~~ Countdown Timer ~~

5
4
3
2
1
0
'

echo -e "\n~~ Countdown Timer ~~\n"

: '
if [[ $1 -gt 0 ]]
then 
  for(( i=$1; i >= 0; i--))
  do
    echo $i
    sleep 1
  done  
else
  echo "Include a positive integer as the first argument."  
fi  '
I=$1

while [[ $I -ge 0 ]]
do
 echo $I
 ((I--))
 sleep 1
done 
