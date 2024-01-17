#! /bin/bash

cp .deploy.sh ~
cp .bash_profile ~
cp .git-checkout.sh ~
cp .git-completion.sh ~

source ~/.bash_profile

bash .deploy.sh