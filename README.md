# kernel-hold
Scripts to hold/unhold upgrades for kernel in Debian/Ubuntu 

## Reason
Whenever I have a new device that works with all of my needs then I get tired of the fact that every time I upgrade the kernel something goes wrong that is if I am in an environment where I can't use a cabled connection to fix things so to make sure wifi / suspend / hibernate work I decided to throw these 2 scripts together.


## Kernel hold sample usage
  root@xt86:/home/oskar/scripts# ./kernel-hold.sh 
  Output kernel version:
  Linux xt86 4.19.0-6-amd64 #1 SMP Debian 4.19.67-2+deb10u1 (2019-09-20) x86_64 GNU/Linux


  List current installed kernel packages
  ii  linux-image-4.19.0-6-amd64            4.19.67-2+deb10u1                   amd64        Linux 4.19 for 64-bit PCs (signed)
  ii  linux-image-amd64                     4.19+105+deb10u1                    amd64        Linux for 64-bit PCs (meta-package)


  Applying the hold for the kernel, metapackage is held


  List package and confirm the kernel is being held (notice the hi instead of the ii)
  ii  linux-image-4.19.0-6-amd64            4.19.67-2+deb10u1                   amd64        Linux 4.19 for 64-bit PCs (signed)
  hi  linux-image-amd64                     4.19+105+deb10u1                    amd64        Linux for 64-bit PCs (meta-package)

## Kernel unhold sample usage
  root@xt86:/home/oskar/scripts# ./kernel-unhold.sh 
  Output kernel version:
  Linux xt86 4.19.0-6-amd64 #1 SMP Debian 4.19.67-2+deb10u1 (2019-09-20) x86_64 GNU/Linux


  List current installed kernel packages
  ii  linux-image-4.19.0-6-amd64            4.19.67-2+deb10u1                   amd64        Linux 4.19 for 64-bit PCs (signed)
  hi  linux-image-amd64                     4.19+105+deb10u1                    amd64        Linux for 64-bit PCs (meta-package)


  Applying the allowed update flag for the kernel, metapackage is held


  List package and confirm the kernel is being allowed to upgrade (notice the ii instead of the hi)
  ii  linux-image-4.19.0-6-amd64            4.19.67-2+deb10u1                   amd64        Linux 4.19 for 64-bit PCs (signed)
  ii  linux-image-amd64                     4.19+105+deb10u1                    amd64        Linux for 64-bit PCs (meta-package)
