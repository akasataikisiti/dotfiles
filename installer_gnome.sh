# <<<  注意: 動作未確認  >>>

################################
#  gnome-desktop用コンフィグの初期化処理  #
################################

#!/usr/bin/env bash


SCRIPT_DIR=$(cd $(dirname $0); pwd)

GNOME_DIR=$SCRIPT_DIR/gnome-settings
GNOME_STARTUP_DIR=$SCRIPT_DIR/gnome-settings/autostart

# バックアップ作成<要らない>

# /dotofiles/各種GNOMEコンフィグへのシンボリックリンクを作成
ln -s "$GNOME_DIR/.Xmodmap" "$HOME/.Xmodmap"

# gnome startup scriptの設置
if [ -d "$HOME/.config/autostart" ]; then
    echo "HOME/.config/autostartディレクトリは既に存在します。"
    exit 0
else
    cp -r "$GNOME_STARTUP_DIR" "$HOME/.config/autostart"
fi

