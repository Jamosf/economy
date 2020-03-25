#!/bin/bash

#build
gitbook build

sleep 1

#push to master
git add .
git commit -m "xxx"
git push -f origin master

sleep 1

#push to gh-pages
cp -rf _book/* ../economy-gh-pages/
cd ../economy-gh-pages/
git add .
git commit -m "xxx"
git push -f origin gh-pages
