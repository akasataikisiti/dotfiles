# 過去の設定を念の為ここに残しておく

# (2024/10/24 stash) .bash_profile
  # 2022/04/25追加( ~/.scriptとその配下のディレクトリをパスに追加 )
  if [ -d "$HOME/.scripts/" ]; then
    export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
  fi

#(2024/10/24 追記、) なぜ個々においた？必要になったら.for_others_from_bash_profileに移動する
export PATH="/home/linuxbrew/.linuxbrew/opt/mysql-client/bin:$PATH"
. "$HOME/.cargo/env"
