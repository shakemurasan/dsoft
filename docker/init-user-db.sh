#!/bin/sh

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE dsoft_development;
    GRANT ALL PRIVILEGES ON DATABASE dsoft_development TO postgres;
EOSQL