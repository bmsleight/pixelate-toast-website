First Post
####################################################
:date: 2013-12-21 10:58
:tags: python, pelican

I have used wordpress for a while. It take too long to set-up and too much maintenance. I don't like mainteance :)

So having spotted a post on `hacker news`_ , about setting up `static html using python <http://razius.com/articles/ditching-wordpress-and-becoming-one-of-the-cool-kids/>`_. Using a project with a great project name.  `pelican <http://blog.getpelican.com/>`_. I thought I give it a go. 

.. _hacker news: https://news.ycombinator.com
.. _Python: http://www.python.org/

0. Install pip and applications (TODO: `learn virtualenv <http://terriyu.info/blog/posts/2013/07/pelican-setup/>`_

   #. install pelican 
   #. pip install ghp-import

#. login to github
#. Cretae new repository e.g. (pixelate-toast-website.git)
#. git clone https://github.com/bmsleight/pixelate-toast-website.git
#. cd pixelate-toast-website
#. pelican-quickstart

   #. website address for now .... http://bmsleight.github.io/pixelate-toast-website

#. git add ./*
#. git commit. m "Initial pelican-quickstart"
#. git push
#. make github

Then as necessary

* make github
