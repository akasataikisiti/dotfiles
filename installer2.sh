#!/usr/bin/env bash


# その他ツール用コンフィグファイルのバックアップを取る
# シンボリックリンクで移行してきた物に差し替える
SCRIPT_DIR=$(cd $(dirname $0); pwd)

OTHER_CONF_DIR=$SCRIPT_DIR/other_config
OTHER_CONF_BK=$SCRIPT_DIR/other_config_bk


for file in $(ls -A $OTHER_CONF_DIR); do
  if [ -f ${HOME}/${file} ]; then
    mv "$HOME/${file}" "$OTHER_CONF_BK/${file}"
  fi
  ln -s "$OTHER_CONF_DIR/${file}" "$HOME/${file}"
done
