#!/bin/sh

rsync -av --exclude '.git' web/ server:/var/www/max.uy/

ssh server <<'ENDSSH'
  chmod -R u+rwX,go+rX,go-w /var/www/max.uy
ENDSSH