Blackview BV5500Pro TWRP enablement
=====

The BV5500Pro is a low-end rugged smartphone from Blackview. The SoC is a
Mediatek MT6739.

Current state
===
The thing is boot-looping and seems to do it too early for us to be able to
catch any meaningful information for debugging.

Setting up the thing
===
Make a directory for the Android sources (any directory name would do):
```
mkdir bv5500pro-android
cd bv5500pro-android
```

Initialize the OmniROM manifest and sync with it:
```
repo init -u https://github.com/tshikaboom/omnirom-bv5500pro-manifest
repo sync
```

Source and lunch an engineer build variant of Android:
```
. build/envsetup.sh
lunch blackview_bv5500pro-eng
```

Make the recovery image which includes TWRP:
```
make recoveryimage
```

Unlocking and flashing the phone
===
- Hold the power and volume up buttons for a long time.
- Select fastboot mode.
- Connect it with an USB cable to the computer
- `fastboot oem unlock` should then work. (The boot screen should complain about the phone being untrusted)

Flashing can then be done, again in fastboot mode, with the following command:
```
fastboot flash recovery <bv5500pro-android>/out/target/product/bv5500pro/recovery.img
```

Reboot to recovery (with the above power+volume-up trick), and enjoy the boot loop. The phone should then reboot to system.

