#!/bin/sh
echo "This joke is for $1 !"
cd /action-example/
pipenv run python entry.py moo
JOKE="$(pipenv run python entry.py)"
echo "::set-output name=joke::$JOKE"