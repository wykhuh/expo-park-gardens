#! /bin/bash

# https://stackoverflow.com/a/37890564
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
if [[ "$BRANCH" != "main" ]];
then
  echo 'Aborting script; not on main';
  exit 1;
fi

changes="$(git diff-index HEAD --)"
if [[ "$changes" != "" ]];
then
  echo 'Aborting script; unstaged changes';
  exit 1;
fi
echo 'Do stuff!';

git branch -D gh-pages
git checkout -b gh-pages

quarto render

mkdir docs
mv _site/scripts/* docs
rm -rf _site
rm -rf data
rm -rf scripts
rm gardens.Rproj
rm renv.lock
rm _quarto.yml
rm .Rprofile

git add .
git commit -m 'update site'
git push origin gh-pages -f
git checkout main
