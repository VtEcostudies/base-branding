#!/bin/bash
brunch build --production &&
rsync -a -e "ssh -i /home/jloomis/.ssh/vce_live_aws_key_pair.pem" --delete --rsync-path="sudo rsync" --info=progress2 public/ vtatlasoflife.org:/srv/vtatlasoflife.org/www/basic-brand-2020/

#copy custom spatial-hub content and styles to cas-spatial server
rsync -a -e "ssh -i /home/jloomis/.ssh/vce_live_aws_key_pair.pem" --delete --rsync-path="sudo rsync" --info=progress2 /home/jloomis/upload/portal-vt.gsp ubuntu@52.38.32.122:/home/ubuntu/upload
rsync -a -e "ssh -i /home/jloomis/.ssh/vce_live_aws_key_pair.pem" --delete --rsync-path="sudo rsync" --info=progress2 /home/jloomis/base-branding/app/css/val.css ubuntu@52.38.32.122:/home/ubuntu/upload

