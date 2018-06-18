#!/bin/sh
jekyll build
aws s3 sync ./_site/ s3://www.ericdaugherty.com/
