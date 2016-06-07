#!/bin/bash

# Source:
# https://drewsilcock.co.uk/custom-jekyll-plugins

if [[ -z "$1" ]]; then
  echo "Please enter a git commit message"
  exit
fi

jekyll build --future && \
  cd _site && \
  git add . && \
  git commit -am "$1" && \
  git push origin master && \
  cd .. && \
  echo "Successfully built and pushed to GitHub."
