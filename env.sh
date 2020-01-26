# neo vim install
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

# dein install
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh ~/.cache/dein

# colorscheme; chroma
git clone https://github.com/crater2150/vim-theme-chroma
mv ./vim-theme-chroma/colors/chroma.vim ~/.config/nvim/colors/chroma.vim
rm -rf ./vim-theme-chroma

# make directories and add symbols
mkdir ~/.config/nvim ~/.config/nvim/colors ~/.config/nvim/dein
ln -s ./dein.toml ~/.config/nvim/dein/
ln -s ./dein_lazy.toml ~/.config/nvim/dein
ln -s ./init.vim ~/.vimrc

echo "set runtimepath += '~/.config/nvim/'" >> ~/.vimrc
