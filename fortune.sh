#!/usr/bin/bash
#Program to tell a persons fortune
echo -e "\n~~ Fortune Teller ~~\n"
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM%6 ))

GET_FORTUNE(){
 if [[ ! $1 ]] #if no arg is passed
 then
  echo "Ask a yes or no question: "
 else
 echo "Try again. Make sure it ends with a question mark:"
 fi
 read QUESTION
}
GET_FORTUNE
until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again #if the question doesn't end with "?" it passes an arg to the function without "?"
done
echo -e "\n${RESPONSES[$N]}"