#! /bin/bash

case $1 in
  "-")
    git checkout -
    ;;
  *)
    git branch | grep $1 | awk '{ sub(/\*/,"");print $0}' | head -1 | xargs git checkout
esac
