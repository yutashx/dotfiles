# make directories and add symbols
# zsh
mv ~/.zshrc ../escape
mv ~/.zprezto/runcoms/zpreztorc ../esccape
ln -s ../configs/zsh/zshrc ~/.zshrc
ln -s ../configs/zsh/zpreztorc ~/.zprezto/runcoms/zpreztorc

# neovim
mkdir -p ~/.config/nvim/colors
mv ~/.config/nvim/init.vim ../escape
ln -s ../configs/nvim/init.vim ~/.config/nvim/init.vim
ln -s ../configs/nvim/template ~/.config/nvim/template
