#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\033[01;32m\][\[\033[01;33m\]\u@\h \[\033[01;35m\]\W\[\033[01;32m\]]\[\033[00m\]\$ '

alias music='ncmpcpp'

#diary commands
alias diary='nvim ~/Documents/bios/diary.tex'
alias diaryc='cd ~/Documents/bios && lualatex diary.tex && rm diary.aux diary.log && cd -'
alias diarys='zathura ~/Documents/bios/diary.pdf'

#book reading list
alias book='nvim ~/Documents/bios/books.json'

#delete LaTeX compilation files
alias clean='rm -r *.aux *.log'

#newsboat
alias news='newsboat'

#dotfiles management
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
