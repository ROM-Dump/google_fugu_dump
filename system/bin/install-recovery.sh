#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/by-name/recovery:9588736:6b48dd6df583613a1c4d0977be2d27a531606b58; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/by-name/boot:7075840:e0e8991f4c528102c9260576a9e101c033d4ae3e EMMC:/dev/block/by-name/recovery 6b48dd6df583613a1c4d0977be2d27a531606b58 9588736 e0e8991f4c528102c9260576a9e101c033d4ae3e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
