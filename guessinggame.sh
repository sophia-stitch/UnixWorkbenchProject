#!/usr/bin/env bash
#File: guessinggame.sh

function guessnum {
  correctans=$(ls | wc -l)

  echo "How many files are in the current directory? Type in an integer and press Enter:"
  read response

  while [[ $response -ne $correctans ]]
  do
    if [[ $response -gt $correctans ]]
    then
      echo "Your guess is too high. Try again:"
      read response
    else
      echo "Your guess is too low. Try again:"
      read response
    fi
  done

  if [[ $response -eq $correctans ]]
  then
    echo "Congratulations!"
  fi
}

guessnum