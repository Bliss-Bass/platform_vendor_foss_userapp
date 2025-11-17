# Applications

Additional FOSS applications installed on first boot. 

This method was adapted from [Glodroid](https://github.com/GloDroid/glodroid_external_apks) and is not currently supported by the AOSP.

## Instructions

Clone to vendor/foss_userapp
```bash
git clone https://github.com/Bliss-Bass/platform_vendor_foss_userapp vendor/foss_userapp
```

Then add your import from vendor:
```bash

$(call inherit-product, vendor/foss_userapp/prebuilts/apks/foss-userapp-apks.mk)

```

## Usage

The apps are includes based on variaous build environment flags:

**All Builds**

* `BLISS_SUPER_VANILLA` - Does not include Termux apk
* Neo-Store is included in all FOSS builds

**FOSS Builds**
(When `BLISS_BUILD_VARIANT` is `foss`)
* `USE_AURORA_STORE` - Includes Aurora Store apk
* `USE_DROIDIFY_APP` - Includes Droidify Store instead of Neo-Store