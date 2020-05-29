#!/bin/bash

RANDOM_STRING=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

git reset --hard origin/master
echo $RANDOM_STRING > activity.txt
git add .
git commit -m "adding $RANDOM_STRING to activity.txt";
git push origin master;


