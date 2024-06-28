#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/by-name/recovery:7131136:002c486cb12f7916fb7bd8d1b6579402df4f9aeb; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/by-name/boot:6291456:ba6adcf12043d0d2178f61e3da01c0afaf65a505 EMMC:/dev/block/by-name/recovery 002c486cb12f7916fb7bd8d1b6579402df4f9aeb 7131136 ba6adcf12043d0d2178f61e3da01c0afaf65a505:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
