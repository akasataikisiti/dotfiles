source ~/.bashrc
export PATH="$PATH:~/bin"
# なんかあった一応コメントアウトして残しておく(cargo)
# . "$HOME/.cargo/env"

#shellshoccerのコマンド群にパスを通す(2021/11/07)
export PATH="$HOME/work/installer/shellshoccar/bin:$PATH"

#既定editorをneovimにする
export EDITOR='/usr/bin/nvim'

#CheatSheetにパスを通す(2021/12/24)
export PATH="$HOME/go/bin:$PATH"

#rustの開発環境をインストールした(zoxide使うために)
. "$HOME/.cargo/env"
#zoxide使うために必要な記述
eval "$(zoxide init bash)"

# history にコマンド実行時刻を記録する
HISTTIMEFORMAT='%Y-%m-%d T%T%z '

##############################################################################
# 2022/04/25追加( ~/.scriptとその配下のディレクトリをパスに追加 )
##############################################################################
export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

##############################################################################
# 2022/04/25追加     Aliases (confi/aliasrcにコマンドエイリアスを作成)
##############################################################################

if [ -f ~/.config/aliasrc ]; then
    . ~/.config/aliasrc
fi

##############################################################################

# ここから下2022/11/01 bashrcからもってきた
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

# NEOVIM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

