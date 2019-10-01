#!/bin/sh

echo "Output kernel version:"
uname -a
echo "\n"

echo "List current installed kernel packages"

dpkg -l | grep linux-image
echo "\n"

echo "Applying the hold for the kernel, metapackage is held"

echo linux-image-amd64 hold | dpkg --set-selections
echo "\n"

echo "List package and confirm the kernel is being held (notice the hi instead of the ii)"

dpkg -l | grep linux-image
echo "\n"
