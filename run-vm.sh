#!/bin/bash

set -euo pipefail
shopt -s nullglob

IMAGE_NAME="$1"

qemu-system-x86_64 -m 2048 -nodefaults -display none -serial mon:stdio -drive if=pflash,unit=0,readonly=on,format=raw,file=/usr/share/OVMF/OVMF_CODE.fd -drive if=virtio,format=raw,file=.build/"$IMAGE_NAME"
