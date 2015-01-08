** Deric's Vim Configuration.

*** Installation steps:

	 Clone the Repository into your ~/.vim:
		``` bash
		$	git clone git@gitlabhq.ptsteams.local:dmiguel/vim_files.git ~/.vim
		```
	This setup relies on the Vundle plugin which manages your plugins. Vundle needs to be installed
	using git.
		
		$	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

	Next, you should link the vimrc (.vim/vimrc) file to ~/.vimrc (the -f option will force an overwrite if
		a .vimrc file arleady exists in the home folder)
	
		$	ln -s -f ~/.vim/vimrc ~/.vimrc

	Make sure to install all the bundles that are inlcuded in your new .vimrc file by running the following command:

		$	vim +BundleInstall +qall

	You can you run this command anytime you wnat to check plugin updates.
