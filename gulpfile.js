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

        // The port
        port: 1234
    });

    // Watch for file changes
    gulp.watch('ukus-pokus/*.html', ['html']);
 });

 // Copies HTML from ukus-pokus to dist

 gulp.task('html',function(){
     return gulp
     .src('ukus-pokus/*.php')
     .pipe(gulp.dest('dist'));
 });


   /**
   * The main task
   */



gulp.task('default',['server']);