################################
#  bashコンフィグの初期化処理  #
################################

#!/usr/bin/env bash


SCRIPT_DIR=$(cd $(dirname $0); pwd)

# bashコンフィグのバックアップをとる
BASH_DIR=$SCRIPT_DIR/bash
BASH_DIR_BK=$SCRIPT_DIR/bashdotfile_bk

# バックアップ作成
# bashrcのみ元ファイルに設定追加して使用するようにする
if [ -f ${HOME}/.bashrc ]; then
  cp "$HOME/.bashrc" "$BASH_DIR_BK/.bashrc"
fi
if [ -f ${HOME}/.bash_profile ]; then
  mv "$HOME/.bash_profile" "$BASH_DIR_BK/.bash_profile"
fi
if [ -f ${HOME}/.bash_aliases ]; then
  mv "$HOME/.bash_aliases" "$BASH_DIR_BK/.bash_aliases"
fi
if [ -f ${HOME}/aliasrc ]; then
  mv "$HOME/aliasrc" "$BASH_DIR_BK/aliasrc"
fi

cat "$BASH_DIR/text_for_adding_to_bashrc" >> "$HOME/.bashrc" # TODO  ここおかしいので見直す(なぜリンクで上書きされる箇所に追記する？)
# /dotofiles/各種bashコンフィグへのシンボリックリンクを作成
ln -s "$BASH_DIR/.bash_profile" "$HOME/.bash_profile"
ln -s "$BASH_DIR/.bash_aliases" "$HOME/.bash_aliases"
ln -s "$BASH_DIR/.inputrc" "$HOME/.inputrc"
ln -s "$BASH_DIR/.from_bashrc" "$HOME/.from_bashrc"
ln -s "$BASH_DIR/.for_others_from_bash_profile" "$HOME/.for_others_from_bash_profile"
ln -s "$BASH_DIR/aliasrc" "$HOME/aliasrc"

# installer2を実行
. installer2.sh
