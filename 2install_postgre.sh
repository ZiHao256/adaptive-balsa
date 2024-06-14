cd postgresql-12.5
./configure --prefix=/data/postgresql-12.5 --without-readline
sudo make clean
sudo make -j
sudo make install

echo 'export PATH=/data/postgresql-12.5/bin:$PATH' >> ~/.bashrc