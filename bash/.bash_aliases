echo "read .bash_aliases"

# ubuntuのデフォルトのbashrcにある記載自分でこっちに移動してきた
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


alias cd-k='cd /mnt/c/Users/KS/Desktop'
alias cd-c='cd /mnt/c'
alias cd-d='cd /mnt/d/'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# 20210803 add
#Executing man command with japanese lang.
alias e_man="man -L en_US.utf8"

#nvimのエイリアス
alias nv='nvim'

# ウィンドウズのクリップを使用する
alias clip='/mnt/c/WINDOWS/system32/clip.exe'

# haskell 環境
alias ghci='stack ghci'

# LearnLinuxTV
alias i='sudo apt install '

# explorerを開く（wsl2用）
alias ee='explorer.exe .'

# pushd,popdを使いやすく

# pet実行を簡単に
alias pe='pet exec'
alias pl='pet list'
