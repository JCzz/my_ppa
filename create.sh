#!/bin/zsh

dpkg-scanpackages . /dev/null > Release
dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz

git add .
git commit -m "package"
git push
git status