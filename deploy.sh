#!/bin/bash

echo "build the base-branding app and rsync to vtatlasoflife.org/basis-brand-2020"
brunch build --production && rsync -a -e "ssh -i /home/jloomis/.ssh/vce_live_aws_key_pair.pem" --delete --rsync-path="sudo rsync" --info=progress2 public/ vtatlasoflife.org:/srv/vtatlasoflife.org/www/basic-brand-2020/

ssh -i /home/jloomis/.ssh/vce_live_aws_key_pair.pem ubuntu@vtatlasoflife.org sudo systemctl restart nginx
