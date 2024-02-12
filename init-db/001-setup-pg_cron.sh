#!/usr/bin/env bash

# create custom config
# Remove last line "shared_preload_libraries='citus'"
sed -i '$ d' /var/lib/postgresql/data/pgdata/postgresql.conf
cat <<EOT >> /var/lib/postgresql/data/pgdata/postgresql.conf
shared_preload_libraries = 'pg_cron,pg_trgm';
cron.database_name = 'givethio'
EOT
# Required to load pg_cron
pg_ctl restart
