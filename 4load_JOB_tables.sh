set -ex

# mkdir -p datasets/job && pushd datasets/job
# wget -c http://homepages.cwi.nl/~boncz/job/imdb.tgz && tar -xvzf imdb.tgz && popd

# # Prepend headers to CSV files
# python3 ./balsa/scripts/prepend_imdb_headers.py

# imdb_dir='/data/ytzheng/imdb'

# Create and start the DB
# pg_ctl -D $imdb_dir initdb

# Copy custom PostgreSQL configuration.
# cp ./balsa/conf/balsa-postgresql.conf $imdb_dir/postgresql.conf

# Start the server
# pg_ctl -D $imdb_dir start -l logfile-imdb

# Load data + run analyze (can take several minutes)
# bash ./balsa/load-postgres/load_job_postgres.sh /home/ytzheng/adaptive-balsa/datasets/job/

pip3 install -i https://mirrors.aliyun.com/pypi/simple/ protobuf==3.20.0