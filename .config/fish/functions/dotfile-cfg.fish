function dotfile-cfg --description 'git repo for dotfile config - use git clone --separate-git-dir=~/.my_dotfile_config/ /path/to/repo ~ to replicate dotfile in new home directory'
	command git --git-dir="$HOME/.my_dotfile_config/" --work-tree="$HOME" $argv
end
