#! /bin/bash
SITE_PATH='/opt/www/blog'

cd $SITE_PATH
ln -s /opt/www/hexo-theme-yilia ./themes/yilia
git reset --hard origin/master
git pull origin master
yarn gen
