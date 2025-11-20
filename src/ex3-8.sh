#!/bin/bash
[ ! -d DB ] && mkdir DB
for i in {1..5}; do touch DB/file$i.txt; done
tar -zcvf DB.tar.gz DB
[ ! -d train ] && mkdir train
for f in DB/*; do ln -sf ../$f train/$(basename $f); done
