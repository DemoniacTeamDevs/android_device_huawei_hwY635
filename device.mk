#
# Copyright 2016 The AOSP-OMS Project
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
#

$(call inherit-product-if-exists, vendor/huawei/hwY635/hwY635-vendor.mk)

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc-nci.conf:system/etc/nfc-nci.conf \
    $(LOCAL_PATH)/releasetools/device_check.sh:install/bin/device_check.sh

$(call inherit-product, device/huawei/msm8916-common/msm8916.mk)
