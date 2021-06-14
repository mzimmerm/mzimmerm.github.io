#!/bin/sh -e

# Script used from my systemd service my-serve-http-jekyll-my-blog.service

# This watches for changes in $BLOG.
# When a blog is added or modified using org2jekyll-publish, two things happen:
#   1. Org-export runs, which exports the blog $BLOG/org/a-test-blog.org to html
#      and places the html to the $BLOG/_posts/2021-04-20-a-test-blog.html
#   2. The Jekyll auto-watch will then copy all "special" dirs from _posts to _site, in detail:
#      Copies $BLOG/_posts/2021-04-20-a-test-blog.html to $BLOG/_site/2021/04/20/a-test-blog.html
#   3. Blog index is built from the _posts directory, not as we would expect from the _site directory.

# cd $BLOG
cd /home/mzimmermann/dev/my-projects-source/public-on-github/mzimmerm.github.io
echo path is $(pwd)
jekyll serve --baseurl=''
