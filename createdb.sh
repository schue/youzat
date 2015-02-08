#!/bin/bash

createuser -R -D -S youzat
createdb youzat

psql --dbname=youzat --file=/usr/share/postgresql/9.1/contrib/postgis-1.5/postgis.sql
psql --dbname=youzat --file=/usr/share/postgresql/9.1/contrib/postgis-1.5/spatial_ref_sys.sql

psql youzat <<EOF
CREATE TABLE uz (uzid INT, name TEXT);
CREATE TABLE hood (hoodid INT, name TEXT);
CREATE TABLE zat (hoodid INT, loc geography(POINT,4326));

ALTER TABLE spatial_ref_sys OWNER TO youzat;
ALTER TABLE geometry_columns OWNER TO youzat;
ALTER TABLE geography_columns OWNER TO youzat;
ALTER TABLE uz OWNER TO youzat;
ALTER TABLE hood OWNER TO youzat;
ALTER TABLE zat OWNER TO youzat;
EOF
