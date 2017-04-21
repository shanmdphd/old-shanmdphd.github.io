#!/bin/bash

cd _drafts
for file in *.Rmd; do
    Rscript ./r2j.R $file
done
cd ..
