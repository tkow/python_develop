sudo yum groupinstall "Development tools"
sudo yum install -y gcc gcc-c++ zlib-devel bzip2-devel readline-devel openssl-devel openssl ncurses-devel sqlite-devel tk-devel python-devel
wget https://www.python.org/ftp/python/3.3.3/Python-3.3.3.tgz
wget https://www.python.org/ftp/python/2.7.10/Python-2.7.10.tgz
tar zxf Python-3.3.3.tgz 
tar zxf Python-2.7.10.tgz 
mv /usr/bin/python /usr/bin/python.old
cd Python-2.7.10
sudo ./configure --with-threads --enable-shared --prefix=/usr/local/python
sudo make 
sudo make altinstall
sudo ln -s /usr/local/python/lib/libpython2.7.so.1.0 /lib64/
sudo ln -s /usr/local/python/bin/python2.7 /usr/local/bin/python
sudo mkdir /usr/local/src/gmp
cd ../
cd Python-3.3.3
sudo ./configure --with-threads --enable-shared --prefix=/usr/local/python
sudo make 
sudo make altinstall
sudo ln -s /usr/local/python/lib/libpython3.3m.so.1.0 /lib64/
sudo ln -s /usr/local/python/bin/python3.3 /usr/local/bin/python3
mv /usr/bin/python /usr/bin/python.old
cd /usr/local/src/gmp
wget ftp://ftp.gnu.org/gnu/gmp/gmp-5.0.5.tar.bz2
bzip2 -dc gmp-5.0.5.tar.bz2 | tar xvf -
cd gmp-5.0.5
./configure --prefix=/usr/local --enable-cxx
sudo make 
sudo make install
cd ~
echo "export PATH=$PATH:/usr/local/python">>.bash_profile
source .bash_profile
curl -kL https://bootstrap.pypa.io/get-pip.py | sudo /usr/local/bin/python
curl -kL https://bootstrap.pypa.io/get-pip.py | sudo /usr/local/bin/python3
sudo ln -s /usr/local/python/bin/pip3 /usr/local/bin/pip3
sudo ln -s /usr/local/python/bin/pip2.7 /usr/local/bin/pip
