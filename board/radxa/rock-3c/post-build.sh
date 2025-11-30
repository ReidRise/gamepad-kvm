#!/bin/sh


BOARD_DIR="$(dirname "$0")"

install -m 0755 -D "$BOARD_DIR"/uboot-spl.img "$BINARIES_DIR"/uboot-spl.img
install -m 0644 -D "$BOARD_DIR"/extlinux.conf "$TARGET_DIR"/boot/extlinux/extlinux.conf
