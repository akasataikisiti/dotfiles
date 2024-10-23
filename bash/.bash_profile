echo "read .bash_profile"
export PATH="$PATH:~/bin"

# nvimから呼ばれた時だけnv -> nvrにする
if [[ "$(ps -o comm= $PPID)" == *"nvim"* ]] || [[ "$(ps -o comm= $PPID)" == *"vim"* ]]; then
  echo "PPID is nvim!"
  alias nv='nvr'
else
  echo "not from nvim (maybe login shell)"
fi

# bashrcにあったものをここで読み込むようにする
if [ -f ~/.from_bashrc ]; then
    . ~/.from_bashrc
fi


# 既定editorをneovimにする(brewインストールとaptインストールでパスを分ける)
# export EDITOR='/usr/bin/nvim'
export EDITOR=$(which nvim)

# history にコマンド実行時刻を記録する
HISTTIMEFORMAT='%Y-%m-%d T%T%z '


# inputrc追加
if [ -f ~/.inputrc ]; then
    . ~/.inputrc
fi

if [ -f ~/.for_others_from_bash_profile ]; then
    . ~/.for_others_from_bash_profile
fi

# aliace追加
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


if [ -f ~/aliasrc ]; then
    . ~/aliasrc
fi


