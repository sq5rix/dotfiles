cd neovim
wget https://github.com/neovim/neovim/releases/download/nightly/.appimage
chmod u+x .appimage && ./nvim.appimage
cd ..
mkdir node
mv node ..
cd ../node
curl -sL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs
mkdir undodir
mkdir autoload
