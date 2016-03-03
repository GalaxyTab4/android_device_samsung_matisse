/*
 * Copyright (C) 2012 The Android Open Source Project
<<<<<<< HEAD
=======
 * Copyright (C) 2012 The CyanogenMod Project <http://www.cyanogenmod.org>
>>>>>>> refs/remotes/GalaxyTab4/cm-13.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _BDROID_BUILDCFG_H
#define _BDROID_BUILDCFG_H

<<<<<<< HEAD
<<<<<<< HEAD
#define BTM_DEF_LOCAL_NAME   "Samsung Galaxy Tab 4"
=======
#define BTM_DEF_LOCAL_NAME   "Oppo Find 7 OnePlus Edition"
#define BTA_DISABLE_DELAY 1000 /* in milliseconds */
>>>>>>> refs/remotes/origin/android-6.0
=======
#define BTM_DEF_LOCAL_NAME   "Galaxy Tab 4"
#define BTA_DISABLE_DELAY 1000 /* in milliseconds */

#define BLUETOOTH_QTI_SW TRUE
// Disables read remote device feature
#define BTA_SKIP_BLE_READ_REMOTE_FEAT FALSE
#define MAX_L2CAP_CHANNELS 16
// skips conn update at conn completion
#define BTA_BLE_SKIP_CONN_UPD FALSE
>>>>>>> refs/remotes/GalaxyTab4/cm-13.0

#endif
