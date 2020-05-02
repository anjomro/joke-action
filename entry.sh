#!/bin/sh
cd /action-example/
pipenv install
echo "********************************************************************"
echo -e "\n\n\n\n\n\n\nThis joke is for $1 !"
pipenv run python entry.py moo
JOKE="$(pipenv run python entry.py)"
JOKE="${JOKE//'%'/'%25'}"
JOKE="${JOKE//$'\n'/'%0A'}"
JOKE="${JOKE//$'\r'/'%0D'}"
echo -e "::set-output name=joke::$JOKE"