git clone https://github.com/VirtualParticle/dotfiles ~/.dotfiles/
echo 'source ~/.dotfiles/vim/.vimrc' >> ~/.vimrc
echo ":let &t_ut=''" >> ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo y | vim +PluginInstall +qall
echo
echo 'Vim configuration installed successfully!'
echo
