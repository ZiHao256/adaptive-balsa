cd pg_hint_plan
# Modify Makefile: change line
#   PG_CONFIG = pg_config
# to
#   PG_CONFIG = /data/postgresql-12.5/bin/pg_config
# vim Makefile
make clean
make
make install