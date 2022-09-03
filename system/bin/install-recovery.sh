#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8361984:a5bc7f89654f229c99edfdef44e3639bcf11deb4; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7600128:c4f140f8209a2fe897ea9f9eb0eb64f4b9189bd7 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery a5bc7f89654f229c99edfdef44e3639bcf11deb4 8361984 c4f140f8209a2fe897ea9f9eb0eb64f4b9189bd7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
