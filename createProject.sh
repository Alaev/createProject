#!/bin/bash

# Add executable before run it to file with "chmod 755 createProject.sh" command
# Run file with "bash createProject.sh" command

mkdir build;
mkdir build/css/;
mkdir build/js/;
touch build/js/app.js;
mkdir build/stylus/;
touch build/stylus/main.styl;
mkdir build/vendor/;
touch build/index.html;

touch gulpfile.js;
touch package.json;

# Remove createProject file.
rm -f createProject.sh

# Enjoy
