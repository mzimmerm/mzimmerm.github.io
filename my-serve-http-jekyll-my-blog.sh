#!/bin/sh -e
# cd $BLOG
cd /home/mzimmermann/dev/my-projects-source/public-on-github/mzimmerm.github.io
echo path is $(pwd)
jekyll serve --baseurl=''
