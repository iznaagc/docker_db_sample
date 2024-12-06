#!/usr/bin/env bash
set -e
# postgresql.confのmax_connections行を書き換え
sed -i "s/^#max_connections = 100.*$/max_connections = 5000/" "$PGDATA/postgresql.conf"
