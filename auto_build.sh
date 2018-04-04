#! /bin/bash
SITE_PATH='/opt/www/blog'

cd $SITE_PATH
git reset --hard origin/master
git clean -f
git pull origin master
yarn && yarn gen
