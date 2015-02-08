#!/bin/bash
/etc/init.d/postgresql start
cd /srv/youzat
grunt server
