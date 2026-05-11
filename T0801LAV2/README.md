# Android device tree for NUU T0801L (T0801LAV2)

```
#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
```

## Build requirements

- TWRP/Omni recovery sources for Android 12.
- This device tree checked out at `device/nuu/T0801LAV2`.
- Prebuilt kernel artifacts in `T0801LAV2/prebuilt`:
  - `Image.gz` (kernel)
  - `dtb.img` (device tree blob)
  - Optional: `dtbo.img` (only if the device uses a separate dtbo partition)

## Build steps

1. Initialize and sync the TWRP/Omni recovery tree for Android 12.
2. Place this repository’s `T0801LAV2` folder at `device/nuu/T0801LAV2`.
3. From the TWRP tree root:
   - `source build/envsetup.sh`
   - `lunch omni_T0801LAV2-eng`
   - `mka recoveryimage`
4. The output should be at:
   - `out/target/product/T0801LAV2/recovery.img`

## Flashing

Use one of the following methods after unlocking the bootloader:

- **Fastboot**
  - `fastboot flash recovery recovery.img`
  - `fastboot reboot recovery`

- **From Android (adb + dd)**
  - `adb push recovery.img /sdcard/`
  - `adb shell su -c 'dd if=/sdcard/recovery.img of=/dev/block/platform/bootdevice/by-name/recovery conv=fsync'`
  - Confirm the `dd` command exits successfully (exit code 0) before rebooting.
