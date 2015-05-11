boilerplate
===========

Boilerplate with Gulp Bower Jade Stylus and CoffeeScript 


This is a quick little boilerplate using [Gulp](http://gulpjs.com/) to streamline [Jade](http://jade-lang.com/), [Stylus](https://learnboost.github.io/stylus/) and [CoffeeScript](http://coffeescript.org/) compilation. [Jeet](http://jeet.gs/) is included for responsive grid functionality. 

Instructions: 

1) In the project root, run 'npm install'

2) In the project root, run 'bower install'

3) Run gulp to compile all static assets from 'src' into their build destinations. 

4) Optional: Run gulp watch to poll for changes. 

Currently the setup minifies and uglifies the css and js. If you want more readable source code do the following: 

In gulpfile.coffee:

CSS: 
Remove all instances of .pipe(minify({keepBreaks:false}))

JS: 
Remove all instances of .pipe(uglify())

JADE: 
Change .pipe(plugins.jade({ pretty: false })) to .pipe(plugins.jade({ pretty: true }))





In order to use the Live Reload functionanlity, download the livereload plugin for your browser at: https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei?hl=en

