#!/bin/bash

set -eo pipefail


#https://simpleit.rocks/having-pretty-urls-in-a-jekyll-website-hosted-in-amazon-s3
function strip_extension {
    find _site/ -type f ! -iname 'index.html' -iname '*.html' -print0 | while read -d $'\0' f; do mv "$f" "${f%.html}"; done
}

bundle exec jekyll build && strip_extension && s3_website push
