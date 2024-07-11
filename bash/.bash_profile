echo "read .bash_profile"
export PATH="$PATH:~/bin"


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

# aliace追加
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# 2022/04/25追加( ~/.scriptとその配下のディレクトリをパスに追加 )
if [ -d "$HOME/.scripts/" ]; then
  export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
fi

if [ -f ~/aliasrc ]; then
    . ~/aliasrc
fi

if [ -f ~/.for_others_from_bash_profile ]; then
    . ~/.for_others_from_bash_profile
fi
