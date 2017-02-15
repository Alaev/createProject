#!/bin/bash

#to run it executable to file with chmod 755 createProject 
# run file by bash createProject.sh

mkdir build;
mkdir build/css/;
mkdir build/js/;
touch build/js/app.js;
mkdir build/stylus/;
touch build/stylus/main.styl;
mkdir build/vendor/;
touch build/index.html;


echo "var gulp = require('gulp');
var stylus = require('gulp-stylus');
var browserSync = require('browser-sync').create();

gulp.task('serve', ['stylus'], function() {

    browserSync.init({
        server: './build'
    });

    gulp.watch('build/stylus/main.styl', ['stylus']);
    gulp.watch('build/*.html').on('change', browserSync.reload);
    gulp.watch('build/js/*.js').on('change', browserSync.reload);
    
});

gulp.task('stylus', function() {
    return gulp.src('build/stylus/main.styl')
        .pipe(stylus())
        .pipe(gulp.dest('build/css'))
        .pipe(browserSync.stream());
});

gulp.task('default', ['serve']);
" > gulpfile.js


echo '{
    "env": {
        "browser": true,
        "commonjs": true,
        "es6": true,
        "node": true,
        "jquery": true
    },
    "parserOptions": {
        "ecmaFeatures": {
            "jsx": true
        },
        "sourceType": "module"
    },
    "rules": {
        "no-const-assign": "warn",
        "no-this-before-super": "warn",
        "no-undef": "warn",
        "no-unreachable": "warn",
        "no-unused-vars": "warn",
        "constructor-super": "warn",
        "valid-typeof": "warn",
        "semi":"error"
    }
}' > .eslintrc.json
echo '{
  "name": "name",
  "version": "0.0.1",
  "description": "",
  "main": "",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "gulp": "gulp"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "browser-sync": "^2.18.5",
    "gulp": "^3.9.1",
    "gulp-stylus": "^2.6.0"
  }
}' > package.json;

# install package.json
# npm install
# yarn install

# remove createProject file.
rm -f createProject.sh
