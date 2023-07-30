.PHONY: vim vundle tmux oh-my-zsh zsh

init: vim tmux zsh

oh-my-zsh:
	sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

zsh: oh-my-zsh
	ln -fs `pwd`/zshrc ~/.zshrc

vundle:
	mkdir -p ~/.vim/bundle
	[ -d ~/.vim/bundle/vundle/.git ] || \
		git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

vim: vundle
	ln -fs `pwd`/vimrc ~/.vimrc
	ln -fs `pwd`/vimrc.bundle ~/.vimrc.bundle
	vim -c 'execute "BundleInstall" | q | q'
	mkdir -p ~/.vim/colors
	ln -fs ~/.vim/bundle/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim
	ln -fs ~/.vim/bundle/gruvbox/colors/gruvbox.vim ~/.vim/colors/gruvbox.vim

tmux: 
	mkdir -p ~/.tmux
	ln -fs `pwd`/tmuxcolors-256.conf ~/.tmux/tmuxcolors-256.conf
	ln -fs `pwd`/tmux.conf ~/.tmux.conf
