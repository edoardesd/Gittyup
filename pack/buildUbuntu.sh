ls
pwd
apt install -y build-essential libgl1-mesa-dev
apt install -y cmake
apt install -y libgit2-dev
apt install -y cmark
apt install -y git
apt install -y libssh2-1-dev
apt install -y openssl
apt install -y qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools
apt install -y qttools5-dev
apt install -y ninja-build
apt install -y lua5.2 liblua5.2-dev
cd ../
git fetch
git submodule init
git submodule update
git pull
git checkout deps
cd dep/openssl/openssl/
./config -fPIC
make
cd ../../..
mkdir -vp build/release
cd build/release
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ../..
apt purge -y liblua5.2-dev
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ../..
ninja

