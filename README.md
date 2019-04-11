## TWRP device tree for Samsung Galaxy S2 (i9100)

Add to `.repo/local_manifests/roomservice.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <!-- remote -->
  <remote name="github2" fetch="https://github.com/" />
  <remote name="gitlab" fetch="https://gitlab.com/" />
  
  <!-- removals -->
  <remove-project name="android_bootable_recovery" />
  
  <project path="device/samsung/i9100" name="linusdan/android_device_samsung_i9100" remote="github2" revision="android-9.0" />
  <project path="bootable/recovery" name="linusdan/android_bootable_recovery" remote="github2" revision="android-9.0" />
  <project path="kernel/samsung/smdk412" name="linusdan/kernel_samsung_smdk4412" remote="gitlab" revision="pie" />
  <project path="hardware/samsung" name="linusdan/hardware_samsung" remote="gitlab" revision="pie-omni" /> 
</manifest>
```

Then run `repo sync -c --force-sync --no-clone-bundle --no-tags` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_i9100-eng
mka recoveryimage
```

Kernel source: https://gitlab.com/linusdan/kernel_samsung_smdk4412/tree/pie
