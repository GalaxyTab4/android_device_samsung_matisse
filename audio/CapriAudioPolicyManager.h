/*
 * Copyright (C) 2014 The Android Open Source Project
 * Copyright (C) 2014 The CyanogenMod Project
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


#include <stdint.h>
#include <sys/types.h>
#include <AudioPolicyManager.h>

#ifndef ANDROID_CAPRI_AUDIO_POLICY_MANAGER_H
#define ANDROID_CAPRI_AUDIO_POLICY_MANAGER_H

namespace android {

class CapriAudioPolicyManager: public AudioPolicyManager
{
public:
    CapriAudioPolicyManager(AudioPolicyClientInterface *clientInterface);
    virtual ~CapriAudioPolicyManager() {}

    virtual void setPhoneState(audio_mode_t state);
};

}  // namespace android
#endif  // ANDROID_CAPRI_AUDIO_POLICY_MANAGER_H
