#!/bin/sh

# Run as root
sudo -s

set -e

swapoff /dev/$(hostname)-vg/swap_1
lvreduce -L 8G /dev/mapper/$(hostname)--vg-swap_1
mkswap /dev/$(hostname)-vg/swap_1
swapon /dev/$(hostname)-vg/swap_1

free -tm | grep -i swap

exit 0
