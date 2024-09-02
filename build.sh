#!/bin/bash

recursive_minify() {
    local folder="$1"

    for file in "$folder"/*.html; do
        if [ -f "$file" ]; then
            echo "Minifying: $file"
            html-minifier --collapse-whitespace --remove-comments --remove-optional-tags --remove-redundant-attributes --remove-script-type-attributes --remove-tag-whitespace --use-short-doctype "$file" -o "$file"
        fi
    done

    for subfolder in "$folder"/*; do
        if [ -d "$subfolder" ]; then
            recursive_minify "$subfolder"
        fi
    done
}
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
# Set the target environment
export JEKYLL_ENV=production
echo "Running: $JEKYLL_ENV"
git pull
bundle exec jekyll build
recursive_minify "_site"