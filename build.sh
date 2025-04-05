#!/bin/bash

git pull
rm -r site/
venv/bin/mkdocs build