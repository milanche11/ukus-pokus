/*
 * 
 * 
 * 
 * GULP Configuration description
 * 
 * 
 * 
 */

 'use strict';

 /**
  * Load plugins
  */

  var gulp = require ('gulp');
  var browser = require('browser-sync').create();




/**
* Regular task
 */

 //Create server with BrowserSync and watch for file changes

 gulp.task('server',function(){
    browser.init({
        // Inject CSS changes without the page being reloaded
        injectChanges: true,

        //What to serve - distr for distribution
        server: {
            baseDir: 'dist'
        },

    });

    // Watch for file changes
    gulp.watch('c://wamp64/www/ukus-pokus/*.html', ['watch-html']);
 });

 // Copies HTML from ukus-pokus to dist

 gulp.task('html',function(){
     return gulp
     .src('c://wamp64/www/ukus-pokus/*.html')
     .pipe(gulp.dest('dist'));
 });


/**
 * Watch tasks
 */

gulp.task('watch-html',['html'], function (done) {
    browser.reload();
    done();
});




   /**
   * The main task
   */



gulp.task('default',['server']);