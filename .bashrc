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

alias sc='sudo systemctl'

alias mp3='yt-dlp --embed-metadata -f 'ba' -x --audio-format mp3'

# Sync my default ytm playlist

alias box=' cd /home/fgb/Music/box-of-sounds/ && yt-dlp --embed-metadata -c -f 'ba' -x --audio-format mp3 https://music.youtube.com/playlist?list=PL73czmZpevrfgrr1u8tE6K5izaJ4t0x-v && cd -'

#launch vm on vbox
function vm() { vboxmanage startvm "$1"; }

EDITOR=/bin/nvim

#Koha Debian VM
alias koha='vboxmanage startvm debian --type headless'
alias koha-stop='vboxmanage controlvm debian poweroff'
