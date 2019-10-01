#!/bin/sh

echo "Output kernel version:"
uname -a
echo "\n"

echo "List current installed kernel packages"

dpkg -l | grep linux-image
echo "\n"

echo "Applying the allowed update flag for the kernel, metapackage is held"

echo linux-image-amd64 install  | dpkg --set-selections
echo "\n"

echo "List package and confirm the kernel is being allowed to upgrade (notice the ii instead of the hi)"

dpkg -l | grep linux-image
echo "\n"
