#!/bin/bash

find -L "$PWD" -not -path "*/.*" -type d -exec chmod a+X {} \;
find -L "$PWD" -not -path "*/.*" -type f \( -name "*.html" -o name "*.png" -o -name "*.jpg" \) -exec chmod a+r {} \;
