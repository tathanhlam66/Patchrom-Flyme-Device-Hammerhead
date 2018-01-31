#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:14901248:030227e6b7e1ae350669d2f9699bc9d7ad03b6a4; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10792960:9312bdcc81f31ca2b4d2ccaf89d0c4fd703f313c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 030227e6b7e1ae350669d2f9699bc9d7ad03b6a4 14901248 9312bdcc81f31ca2b4d2ccaf89d0c4fd703f313c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
