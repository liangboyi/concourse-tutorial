#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-gist updated-gist

cd updated-gist
echo $(date) > bumpme

git config --global user.email "boyi.liang@gmail.com"
git config --global user.name "liangboyi"

git add .
git commit -m "Bumped date"
