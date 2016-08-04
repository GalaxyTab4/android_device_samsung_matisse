OUTDIR=vendor/$VENDOR/$DEVICE
MAKEFILE=../../../$OUTDIR/$DEVICE-vendor-blobs.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh

PRODUCT_COPY_FILES += \\
EOF

LINEEND=" \\"
COUNT=`wc -l proprietary-files.txt | awk {'print $1'}`
DISM=`egrep -c '(^#|^$)' device-proprietary-files.txt`
COUNT=`expr $COUNT - $DISM`
for FILE in `egrep -v '(^#|^$)' ../$DEVICE/proprietary-files.txt`; do
  COUNT=`expr $COUNT - 1`
  if [ $COUNT = "0" ]; then
    LINEEND=""
  fi
      # Split the file from the destination (format is "file[:destination]")
  OLDIFS=$IFS IFS=":" PARSING_ARRAY=($FILE) IFS=$OLDIFS
  FILE=${PARSING_ARRAY[0]}
  DEST=${PARSING_ARRAY[1]}
  if [ -n "$DEST" ]; then
    FILE=$DEST
  fi
  echo "	$OUTDIR/proprietary/$FILE:system/$FILE$LINEEND" >> $MAKEFILE
done

(cat << EOF) > ../../../$OUTDIR/$DEVICE-vendor.mk
<<<<<<< HEAD
# Copyright (C) 2012 The CyanogenMod Project
=======
# Copyright (C) 2014 The CyanogenMod Project
>>>>>>> refs/remotes/GalaxyTab4/cm-13.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
<<<<<<< HEAD
#      http://www.apache.org/licenses/LICENSE-2.0
=======
# http://www.apache.org/licenses/LICENSE-2.0
>>>>>>> refs/remotes/GalaxyTab4/cm-13.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh

<<<<<<< HEAD
# Live wallpaper packages
PRODUCT_PACKAGES := \\
    LiveWallpapers \\
    LiveWallpapersPicker \\
    MagicSmokeWallpapers \\
    VisualizationWallpapers \\
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES := \\
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := vendor/$VENDOR/$DEVICE/overlay
=======
# Pick up overlay for features that depend on non-open-source files
PRODUCT_PACKAGES += \\
    com.qualcomm.location \\
    TimeService
>>>>>>> refs/remotes/GalaxyTab4/cm-13.0

\$(call inherit-product, vendor/$VENDOR/$DEVICE/$DEVICE-vendor-blobs.mk)
EOF

<<<<<<< HEAD
(cat << EOF) > ../../../$OUTDIR/BoardConfigVendor.mk
# Copyright (C) 2012 The CyanogenMod Project
=======
(cat << EOF) > ../../../$OUTDIR/Android.mk
# Copyright (C) 2014 The CyanogenMod Project
>>>>>>> refs/remotes/GalaxyTab4/cm-13.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh

<<<<<<< HEAD
USE_CAMERA_STUB := false
EOF
=======
LOCAL_PATH := \$(call my-dir)

ifeq (\$(TARGET_DEVICE),$DEVICE)

include \$(CLEAR_VARS)
LOCAL_MODULE := com.qualcomm.location
LOCAL_MODULE_OWNER := $VENDOR
LOCAL_SRC_FILES := proprietary/app/$(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := TimeService
LOCAL_MODULE_OWNER := $VENDOR
LOCAL_SRC_FILES := proprietary/app/$(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include \$(BUILD_PREBUILT)

endif

EOF

(cat << EOF) > ../../../$OUTDIR/BoardConfigVendor.mk
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh
EOF

>>>>>>> refs/remotes/GalaxyTab4/cm-13.0
