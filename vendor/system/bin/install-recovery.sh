#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10260480:dd7cff897586ce13f1d638d00f501be25c84e5e2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:9381888:b2f5845d8d1f33098640a105652befb3c11375f7 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery dd7cff897586ce13f1d638d00f501be25c84e5e2 10260480 b2f5845d8d1f33098640a105652befb3c11375f7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
