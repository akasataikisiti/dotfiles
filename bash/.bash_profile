source ~/.bashrc
export PATH="$PATH:~/bin"

# このセクション2022/11/01 bashrcからもってきた
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# なんかあった一応コメントアウトして残しておく(cargo)
# . "$HOME/.cargo/env"

# 既定editorをneovimにする
export EDITOR='/usr/bin/nvim'

#CheatSheetにパスを通す(2021/12/24)
export PATH="$HOME/go/bin:$PATH"

# history にコマンド実行時刻を記録する
HISTTIMEFORMAT='%Y-%m-%d T%T%z '

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
