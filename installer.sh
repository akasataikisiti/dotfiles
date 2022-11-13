#!/usr/bin/env bash


SCRIPT_DIR=$(cd $(dirname $0); pwd)

# bashコンフィグのバックアップをとる
BASH_DIR=$SCRIPT_DIR/bash
BASH_DIR_BK=$SCRIPT_DIR/bashdotfile_bk

if [ -f ${HOME}/.bashrc ]; then
  mv "$HOME/.bashrc" "$BASH_DIR_BK/.bashrc"
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

# /dotofiles/bashコンフィグへのシンボリックリンクを作成
ln -s "$BASH_DIR/.bashrc" "$HOME/.bashrc"
ln -s "$BASH_DIR/.bash_profile" "$HOME/.bash_profile"
ln -s "$BASH_DIR/.bash_aliases" "$HOME/.bash_aliases"
ln -s "$BASH_DIR/aliasrc" "$HOME/aliasrc"
