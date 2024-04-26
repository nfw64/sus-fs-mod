#!/system/bin/sh

MODDIR=${0%/*}

TMP_PATH=/data/adb/ksu/ksus

if [ ! -f $TMP_PATH/bin/ksus ]; then
  cp /data/adb/modules/susfs4ksu/realmodule $TMP_PATH/module.prop
  sed 's/description=/description=\['$(echo -e '\xE2\x9D\x8C')' Reinstall sus-fs! \] /g' /data/adb/modules/susfs4ksu/realmodule > $TMP_PATH/module.prop
  mount --bind $TMP_PATH/module.prop  /data/adb/modules/susfs4ksu/module.prop
else
  cp /data/adb/modules/susfs4ksu/realmodule $TMP_PATH/module.prop
  sed 's/description=/description=\['$(echo -e '\xF0\x9F\x98\x8B')' sus-fs running! \] /g' /data/adb/modules/susfs4ksu/realmodule > $TMP_PATH/module.prop
  mount --bind $TMP_PATH/module.prop  /data/adb/modules/susfs4ksu/module.prop
fi