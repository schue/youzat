#!/bin/bash
docker run -i -t -p 3000:3000 -v `pwd`:/srv/youzat youzat/youzat /srv/youzat/docker/start.sh
