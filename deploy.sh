#!/bin/bash
brunch build --production && rsync -a --delete --rsync-path="sudo rsync" --info=progress2 public/ vtatlasoflife.org:/srv/vtatlasoflife.org/www/basic-brand-2020/
