echo "read .bash_aliases"

# (WSL用)マシーンによって変わる
# alias cd-k='cd /mnt/c/Users/KS/Desktop'
# alias cd-c='cd /mnt/c'
# alias cd-d='cd /mnt/d/'


# 20210803 add
#Executing man command with japanese lang.
alias e_man="man -L en_US.utf8"

eval $(thefuck --alias tf)

#nvimのエイリアス
alias nb='nvim'

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

# cd directory
alias a='cd ..'
alias aa='cd ../..'
alias aaa='cd ../../..'
alias aaaa='cd ../../../..'


alias gs='gh copilot suggest'
alias ge='gh copilot explain'

alias reload='exec $SHELL -l'

# git
alias g='git'
alias gb='git branch'
alias gbr='git branch --remote'
alias gco='g co $(gb | fzf)'
alias gcor='g co --track $(gb | fzf)'
