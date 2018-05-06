# bash
# This script is loaded by docker-entrypoint-initdb.sh like `. foo.sh`

set -x

initdb_dir=/docker-entrypoint-initdb.d

psql -v ON_ERROR_STOP=1 --username "${POSTGRES_USER}" <<-EOSQL
  CREATE DATABASE dvdrental;
EOSQL

pg_restore -U "${POSTGRES_USER}" -d dvdrental ${initdb_dir}/data/dvdrental.tar

set +x
