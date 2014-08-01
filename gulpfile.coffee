gulp = require 'gulp'
gutil = require 'gulp-util'
bowerFiles = require "gulp-bower-files"
$ = require('gulp-load-plugins')()

# config
$dest = './dist'
$src = './src'
config =
    path:
        jade: $src + '/**/*.jade'
    
# tasks
gulp.task 'html', ->
    gulp.src(config.path.jade)
    .pipe $.jade()
    .pipe gulp.dest($dest)

# watch
gulp.task 'watch', ->
    gulp.watch config.path.jade, ['html']

# load
gulp.task 'default', ['watch']
