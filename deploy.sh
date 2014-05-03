#!/bin/sh

ssh server <<'ENDSSH'
  mkdir -p /var/www/max.uy/
ENDSSH
scp web/* server:/var/www/max.uy/
