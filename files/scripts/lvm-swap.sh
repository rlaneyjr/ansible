#!/bin/sh

set -e

sudo swapoff /dev/$(hostname)-vg/swap_1
sudo lvresize -L 15G /dev/$(hostname)-vg/swap_1
sudo mkswap /dev/$(hostname)-vg/swap_1
sudo swapon /dev/$(hostname)-vg/swap_1

sudo free -tm | grep -i swap

exit 0
