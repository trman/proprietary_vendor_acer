# Copyright (C) 2010 The Android Open Source Project
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

# All the blobs necessary for liquid
# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \
vendor/acer/liquid/proprietary/lib/libgps.so:obj/lib/libgps.so \
vendor/acer/liquid/proprietary/lib/libcamera.so:obj/lib/libcamera.so \

# Copy RIL libraries (not working yet though... using a Chroot with 2G linked libraries for RIL).
PRODUCT_COPY_FILES += \
vendor/acer/liquid/proprietary/lib/libril-acer-1.so:system/lib/libril-acer-1.so \
vendor/acer/liquid/proprietary/lib/libril-acerril-hook-oem.so:system/lib/libril-acerril-hook-oem.so

# Copy EGL libraries
PRODUCT_COPY_FILES += \
vendor/acer/liquid/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
vendor/acer/liquid/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
vendor/acer/liquid/proprietary/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
vendor/acer/liquid/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
vendor/acer/liquid/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
vendor/acer/liquid/proprietary/lib/libgsl.so:system/lib/libgsl.so \
vendor/acer/liquid/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg

#Copy camera libraries
PRODUCT_COPY_FILES += \
vendor/acer/liquid/proprietary/lib/libcamera.so:system/lib/libcamera.so \
vendor/acer/liquid/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
vendor/acer/liquid/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
vendor/acer/liquid/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so

# Copy dhcpd (need to chmod dhcpcd-eth0.pid upon flashing)
PRODUCT_COPY_FILES += \
vendor/acer/liquid/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
vendor/acer/liquid/proprietary/etc/dhcpcd/dhcpcd-run-hooks:system/etc/dhcpcd/dhcpcd-run-hooks \
vendor/acer/liquid/proprietary/etc/dhcpcd/dhcpcd-hooks/01-test:system/etc/dhcpcd/dhcpcd-hooks/01-test \
vendor/acer/liquid/proprietary/etc/dhcpcd/dhcpcd-hooks/20-dns.conf:system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
vendor/acer/liquid/proprietary/etc/dhcpcd/dhcpcd-hooks/95-configured:system/etc/dhcpcd/dhcpcd-hooks/95-configured \
vendor/acer/liquid/proprietary/data/misc/dhcp/dhcpcd-eth0.pid:data/misc/dhcp/dhcpcd-eth0.pid

# Copy GPS libraries and dependencies
PRODUCT_COPY_FILES += \
vendor/acer/liquid/proprietary/lib/libloc.so:system/lib/libloc.so \
vendor/acer/liquid/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \
vendor/acer/liquid/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \
vendor/acer/liquid/proprietary/lib/libgps.so:system/lib/libgps.so

# Copy CodeAurora's prebuilt QSD8K libaudio, copybit, gralloc (but we need CM's libaudio for FM Radio)
# vendor/acer/liquid/proprietary/lib/libaudio.so:system/lib/libaudio.so \
PRODUCT_COPY_FILES += \
vendor/acer/liquid/proprietary/lib/copybit.qsd8k.so:system/lib/hw/copybit.qsd8k.so \
vendor/acer/liquid/proprietary/lib/gralloc.default.so:system/lib/hw/gralloc.default.so \
vendor/acer/liquid/proprietary/lib/gralloc.qsd8k.so:system/lib/hw/gralloc.qsd8k.so

# Copy WiFi firmware and config
PRODUCT_COPY_FILES += \
vendor/acer/liquid/proprietary/etc/firmware/BCM4325.hcd:system/etc/firmware/BCM4325.hcd \
vendor/acer/liquid/proprietary/etc/firmware/BCM4325.bin:system/etc/firmware/BCM4325.bin \
vendor/acer/liquid/proprietary/etc/firmware/BCM4325_apsta.bin:system/etc/firmware/BCM4325_apsta.bin \
vendor/acer/liquid/proprietary/etc/wifi/nvram.txt:system/etc/wifi/nvram.txt \
vendor/acer/liquid/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Copy Acer keylayout and headset driver
PRODUCT_COPY_FILES += \
vendor/acer/liquid/proprietary/usr/keylayout/a1-keypad.kl:system/usr/keylayout/a1-keypad.kl \
vendor/acer/liquid/proprietary/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
vendor/acer/liquid/proprietary/usr/keylayout/acer-hs-butt.kl:system/usr/keylayout/acer-hs-butt.kl \
vendor/acer/liquid/proprietary/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
vendor/acer/liquid/proprietary/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Copy Vold and configs
PRODUCT_COPY_FILES += \
vendor/acer/liquid/proprietary/etc/vold.fstab:system/etc/vold.fstab \
vendor/acer/liquid/proprietary/etc/vold.conf:system/etc/vold.conf \
vendor/acer/liquid/proprietary/bin/vold:system/bin/vold

# Copy sensor library, binary and configuration (need to chmod ms3c_yamaha.cfg upon flashing for yamaha sensor to function properly)
PRODUCT_COPY_FILES += \
vendor/acer/liquid/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
vendor/acer/liquid/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
vendor/acer/liquid/proprietary/lib/hw/sensors.salsa.so:system/lib/hw/sensors.salsa.so \
vendor/acer/liquid/proprietary/lib/libsensor_yamaha.so:system/lib/libsensor_yamaha.so \
vendor/acer/liquid/proprietary/lib/libms3c_yamaha.so:system/lib/libms3c_yamaha.so \
vendor/acer/liquid/proprietary/bin/sensorcalibutil_yamaha:system/bin/sensorcalibutil_yamaha \
vendor/acer/liquid/proprietary/bin/sensorserver_yamaha:system/bin/sensorserver_yamaha \
vendor/acer/liquid/proprietary/bin/sensorstatutil_yamaha:system/bin/sensorstatutil_yamaha \
vendor/acer/liquid/proprietary/data/system/ms3c_yamaha.cfg:data/system/ms3c_yamaha.cfg

# Copy proprietary Omx* V/A encoders and decoders
PRODUCT_COPY_FILES += \
vendor/acer/liquid/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
vendor/acer/liquid/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
vendor/acer/liquid/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
vendor/acer/liquid/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
vendor/acer/liquid/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
vendor/acer/liquid/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
vendor/acer/liquid/proprietary/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \
vendor/acer/liquid/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
vendor/acer/liquid/proprietary/lib/libOmxVdec.so:system/lib/libOmxVdec.so \
vendor/acer/liquid/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so
