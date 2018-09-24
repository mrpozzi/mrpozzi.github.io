---
layout: post
title: "Useful (z)sh tricks"
date: 2018-09-24 8:30:00
categories: bash productivity engineering
description: Some tricks to increase productivity with (z)shell
image: /images/Zsh-demo.png
---

This is just a summary of some commands I found useful to include in my `.zshrc` file. I'll be extending it and maintaining it for personal use but also to potentially suggest useful productivity boosters.


## git

The following are useful aliases for `git` commands that will help you not having to type the same thing over and over again every day

```bash
# git
alias gs='git status'
alias ga='git add -A'
alias gd='git diff'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcob='git checkout -b'
alias gpl='git pull'
alias gpom='git push origin master'
alias gpo='git push origin'
```



If you are (and you probably are) working with multiple repos you can pulll from all of them by adding the following simple function, and making sure to have all your repos in the same directory

```bash
function pullall  {
	dir=$(pwd)
	cd ~/repos
	for repo in $(ls); do
		if [-d $repo ]; then
			cd $repo
			echo $repo
			git pull
			cd ..
			fi
	done
	cd $dir
}

```

I usually clone each `git` repo in a `repos` subdirectory of my `$HOME` so I can easily use the above helper.



## Python

Here too aliases are nice

```bash
# Python
alias jnb='jupyter-notebook'
alias jlab='jupyter-lab'
```

But you can get a bit fancier. Running `jupyter-lab --no-browser --port=8080` you can start a jupytelab session on your remote computer and then `ssh` in by having an alias like

```bash
# Remote jupyter lab
alias deskjl='ssh -N -L 8080:localhost:8080 <remote username>@<remote ip>'
```



## Moving files

Using rsync is a easy way to move files between computers. I created the following aliases to help me with that

```bash
# Send to remote
alias rems='rsync -av --delete -e ssh ~/shared/ <remote username>@<remote ip>:/home/<remote username>/shared/'

# Receive from remote
alias remr='rsync -av --delete -e ssh <remote username>@<remote ip>:/home/lpozzi/<remote username>/ ~/shared/'

```



## Resources

- [zsh official page](http://zsh.sourceforge.net/)
- [How to install zsh](https://gist.github.com/derhuerst/12a1558a4b408b3b2b6e)
- [oh my zsh plugin](https://ohmyz.sh/)
- Cover image [by Nirakka - Own work, CC BY-SA 3.0](https://commons.wikimedia.org/w/index.php?curid=19543037)
