pushd datasets/job
tar -xvzf imdb.tgz && popd

# Prepend headers to CSV files
python3 ./balsa/scripts/prepend_imdb_headers.py

# Create and start the DB
pg_ctl -D ./imdb initdb

# Copy custom PostgreSQL configuration.
cp ./balsa/conf/balsa-postgresql.conf ./imdb/postgresql.conf

# Start the server
pg_ctl -D ./imdb start -l logfile

# Load data + run analyze (can take several minutes)
bash ./balsa/load-postgres/load_job_postgres.sh /StudyField/Balsa/datasets/job/