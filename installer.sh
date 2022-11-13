#!/usr/bin/env bash


SCRIPT_DIR=$(cd $(dirname $0); pwd)

# bashコンフィグのバックアップをとる
BASH_DIR=$SCRIPT_DIR/bash/
BASH_DIR_BK=$SCRIPT_DIR/bashdotfile_bk/

if [ -f ${HOME}/.bashrc ]; then
  cp "$HOME/.bashrc" "$BASH_DIR_BK/.bashrc"
fi
if [ -f ${HOME}/.bash_profile ]; then
  cp "$HOME/.bash_profile" "$BASH_DIR_BK/.bash_profile"
fi
if [ -f ${HOME}/.bash_aliases ]; then
  cp "$HOME/.bash_aliases" "$BASH_DIR_BK/.bash_aliases"
fi
