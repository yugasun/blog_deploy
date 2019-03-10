#! /bin/bash
SITE_PATH='/opt/www/blog'
THEME_PATH='/opt/www/hexo-theme-yilia'

cd $THEME_PATH
git reset --hard origin/blog
git pull origin blog

cd $SITE_PATH
git reset --hard origin/master
git pull origin master
ln -s /opt/www/hexo-theme-yilia ./themes/yilia
yarn gen
