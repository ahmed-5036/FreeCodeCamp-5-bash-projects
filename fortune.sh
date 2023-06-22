#!/usr/bin/bash
#Program to tell a persons fortune
echo -e "\n~~ Fortune Teller ~~\n"
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later") #array 0-5
N=$(( RANDOM%6 )) #random number 0-5 to randomly pick element from array 

GET_FORTUNE(){
 if [[ ! $1 ]] #if no arg is passed it will repeat
 then
  echo "Ask a yes or no question: "
 else #there is an argument but doesn't end with "?"
 echo "Try again. Make sure it ends with a question mark:"
 fi
 read QUESTION
}
GET_FORTUNE
until [[ $QUESTION =~ \?$ ]] #it will get out of this loop when the passed arg ends with "?"
do
  GET_FORTUNE again #if the question doesn't end with "?" it passes an arg to the function without "?" which is the else statement in GET_FORTUNE()
done

echo -e "\n${RESPONSES[$N]}"