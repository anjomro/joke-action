#!/bin/sh
cd /action-example/
pipenv install
echo "********************************************************************"
echo -e "\n\n\n\n\n\n\nThis joke is for $1 !"
pipenv run python entry.py moo
JOKE="$(pipenv run python entry.py)"
echo "::set-output name=joke::$JOKE"