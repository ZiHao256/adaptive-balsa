# wget https://ftp.postgresql.org/pub/source/v12.5/postgresql-12.5.tar.gz
# tar xzvf postgresql-12.5.tar.gz

# 安装zlib
# wget http://www.zlib.net/zlib-1.3.1.tar.gz
# tar -xzf zlib*
# cd  zlib-1.3.1
# ./configure --prefix=$HOME/local
# make
# make install

# cd postgresql-12.5
# ./configure --prefix=/data/ytzheng/postgresql-12.5 \
#             --without-readline \
#             --with-zlib \
#             --with-includes=$HOME/local/include \
#             --with-libraries=$HOME/local/lib
# make clean
# make -j
# make install

# echo 'export PATH=/data/ytzheng/postgresql-12.5/bin:$PATH' >> ~/.bashrc

