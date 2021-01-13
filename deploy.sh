#!/bin/bash

#build the base-branding app
brunch build --production && rsync -a -e "ssh -i /home/jloomis/.ssh/vce_live_aws_key_pair.pem" --delete --rsync-path="sudo rsync" --info=progress2 public/ vtatlasoflife.org:/srv/vtatlasoflife.org/www/basic-brand-2020/

ssh -i /home/jloomis/.ssh/vce_live_aws_key_pair.pem ubuntu@vtatlasoflife.org sudo systemctl restart nginx

#copy custom spatial-hub content and styles to cas-spatial server
rsync -a -e "ssh -i /home/jloomis/.ssh/vce_live_aws_key_pair.pem" --delete --rsync-path="sudo rsync" --info=progress2 /home/jloomis/upload/portal-vt.gsp ubuntu@52.38.32.122:/data/spatial-hub/views/layouts
rsync -a -e "ssh -i /home/jloomis/.ssh/vce_live_aws_key_pair.pem" --delete --rsync-path="sudo rsync" --info=progress2 /home/jloomis/base-branding/app/css/val.css ubuntu@52.38.32.122:/data/spatial-hub/assets/css

ssh -i /home/jloomis/.ssh/vce_live_aws_key_pair.pem ubuntu@52.38.32.122 sudo touch /var/lib/tomcat7/webapps-spatial.vtatlasoflife.org/ROOT.war
