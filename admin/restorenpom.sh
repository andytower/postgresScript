#!/bin/sh
#*******************************************************
# This shell script can restore database to localhost
# Restore from single file backup
#*******************************************************
pg_restore --host "localhost" --port "5432" --username "postgres" --no-password --role "postgres" --dbname "database name" --no-tablespaces /pgdump/dump_file_name.backup
