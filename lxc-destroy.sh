#!/bin/sh

set -e

for i in $(lxc-ls); do
    lxc-stop -n $i
    lxc-destroy -n $i
done
exit 0
