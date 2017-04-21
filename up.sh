#!/bin/bash

cd _drafts
for file in *.Rmd; do
    Rscript ./r2j.R $file
done
cd ..
git add .
git commit -m "updated drafts"
git push

