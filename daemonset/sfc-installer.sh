#!/bin/bash -x

chroot /host atomic pull --storage ostree quay.io/zvonkok/solarflare-system-container
chroot /host atomic install --system --system-package=no quay.io/zvonkok/solarflare-system-container

chroot /host depmod -ae

chroot /host onload_tool reload

chroot /host ip link set p5p1 down
chroot /host ip link set p5p1 name net0
chroot /host ip link set net0 up

