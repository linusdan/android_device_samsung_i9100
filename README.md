## TWRP device tree for Samsung Galaxy S II (International)
## i9100

Add to `.repo/local_manifests/i9100.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <remove-project name="android_bootable_recovery" />
  
  <project path="device/samsung/i9100" name="linusdan/android_device_samsung_i9100" remote="github" revision="android-7.1" />
  <project path="bootable/recovery" name="linusdan/android_bootable_recovery" remote="github" revision="android-9.0" />  
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_i9100-eng
mka recoveryimage
```

Kernel source: https://github.com/LineageOS/android_kernel_samsung_smdk4412/tree/cm-14.1
