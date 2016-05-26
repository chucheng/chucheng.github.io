#!/bin/sh
find ./_posts/ -type f -iname "*.md" -exec sed -i -e "s/(\.\.\//({{ site\.url }}\//g" {} \;
