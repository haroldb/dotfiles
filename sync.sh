#!/bin/bash
cd "$(dirname "${BASH_SOURCE}")"

function doIt() {
	if [[ -n $1 ]]; then
		rsync --exclude ".git/" --exclude ".gitignore" --exclude ".idea" --exclude "init/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "README.md" --exclude "LICENSE-MIT.txt" -av --no-perms . $1:~
	else
		rsync --exclude ".git/" --exclude ".gitignore" --exclude ".idea" --exclude "init/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "README.md" --exclude "LICENSE-MIT.txt" -av --no-perms . ~
	fi

	source ~/.bash_profile
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt $2
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt $1
	fi
fi
unset doIt
