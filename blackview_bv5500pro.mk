#
# Copyright 2014 The Android Open-Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/blackview/bv5500pro/device.mk)

PRODUCT_NAME := blackview_bv5500pro
PRODUCT_DEVICE := bv5500pro
PRODUCT_BRAND := Android
PRODUCT_MODEL := bv5500pro
PRODUCT_MANUFACTURER := blackview

PRODUCT_PROPERTY_OVERRIDES := \
	ro.vendor.rc=/vendor/etc/init/hw/ \
	vendor.rild.libpath=mtk-ril.so \
	vendor.rild.libargs=-d /dev/ttyC0 \
	ro.vendor.build.fingerprint=Blackview/BV5500Pro_EEA/BV5500Pro:9/P00610/1557840056:user/release-keys \
	ro.vendor.build.security_patch=2019-05-05 \
	ro.vendor.product.cpu.abilist=armeabi-v7a,armeabi \
	ro.vendor.product.cpu.abilist32=armeabi-v7a,armeabi \
	ro.product.vendor.manufacturer=Blackview \
	ro.product.vendor.model=BV5500Pro \
	ro.product.vendor.brand=Blackview \
	ro.product.vendor.name=BV5500Pro_EEA \
	ro.product.vendor.device=BV5500Pro \
	ro.vendor.mtk_cam_lomo_support=1 \
	vendor.mtkcamapp.cshot.platform=-1 \
	persist.vendor.radio.fd.counter=150 \
	persist.vendor.radio.fd.off.counter=50 \
	persist.vendor.radio.fd.r8.counter=150 \
	persist.vendor.radio.fd.off.r8.counter=50 \
	ro.vendor.camera3.zsl.default=150 \
	ro.vendor.mediatek.platform=MT6739 \
	ro.vendor.mtk_config_max_dram_size=0x800000000 \
	ro.vendor.mtk_f2fs_enable=0 \
	ro.vendor.mtk_protocol1_rat_config=Lf/Lt/W/G \
	ro.vendor.mtk_audio_alac_support=1 \
	ro.vendor.num_md_protocol=2 \
	vendor.camera.mdp.dre.enable=0 \
	vendor.camera.mdp.cz.enable=0 \
	ro.vendor.mediatek.version.branch=alps-mp-p0.mp1 \
	ro.vendor.mediatek.version.release=alps-mp-p0.mp1-V5.87 \
	persist.vendor.radio.msimmode=dsds \
	ro.vendor.mtk_besloudness_support=1 \
	ro.vendor.mtk_wappush_support=1 \
	ro.vendor.mtk_agps_app=1 \
	ro.vendor.mtk_audio_tuning_tool_ver=V2.2 \
	ro.vendor.mtk_gps_support=1 \
	ro.vendor.mtk_omacp_support=1 \
	ro.vendor.mtk_dhcpv6c_wifi=1 \
	ro.vendor.mtk_fd_support=1 \
	ro.vendor.mtk_oma_drm_support=1 \
	ro.vendor.mtk_widevine_drm_l3_support=1 \
	ro.vendor.mtk_audio_ape_support=1 \
	ro.vendor.mtk_flv_playback_support=1 \
	ro.vendor.mtk_wmv_playback_support=1 \
	ro.vendor.mtk_send_rr_support=1 \
	ro.vendor.mtk_emmc_support=1 \
	ro.vendor.mtk_ril_mode=c6m_1rild \
	ro.vendor.md_prop_ver=1 \
	ro.vendor.mtk_nfc_addon_support=1 \
	ro.vendor.mtk_pq_support=2 \
	ro.vendor.mtk_pq_color_mode=1 \
	ro.vendor.mtk_blulight_def_support=1 \
	ro.vendor.mtk_wfd_support=1 \
	ro.vendor.mtk_world_phone_policy=0 \
	ro.vendor.mtk_md_world_mode_support=1 \
	ro.vendor.mtk_sim_hot_swap_common_slot=1 \
	ro.vendor.mtk_cta_set=1 \
	persist.vendor.pms_removable=1 \
	ro.vendor.mtk_rild_read_imsi=1 \
	ro.vendor.sim_refresh_reset_by_modem=1 \
	ro.vendor.mtk_external_sim_only_slots=0 \
	ro.vendor.mtk_bg_power_saving_support=1 \
	ro.vendor.mtk_bg_power_saving_ui=1 \
	ro.vendor.sim_me_lock_mode=0 \
	ro.vendor.ap_info_monitor=0 \
	ro.vendor.md_auto_setup_ims=1 \
	persist.vendor.ims_support=1 \
	persist.vendor.mtk_dynamic_ims_switch=1 \
	persist.vendor.mims_support=2 \
	persist.vendor.mtk_wfc_support=1 \
	persist.vendor.volte_support=1 \
	persist.vendor.mtk.volte.enable=1 \
	persist.vendor.vilte_support=1 \
	persist.vendor.viwifi_support=1 \
	persist.vendor.vt.data_simulate=0 \
	persist.vendor.vt.rotate_delay=500 \
	ro.vendor.mtk_uicc_clf=1 \
	persist.vendor.st_nfc_gsma_support=1 \
	ro.vendor.wfd.dummy.enable=1 \
	ro.vendor.wfd.iframesize.level=0 \
	persist.vendor.connsys.chipid=-1 \
	persist.vendor.connsys.patch.version=-1 \
	persist.vendor.connsys.dynamic.dump=0 \
	vendor.connsys.driver.ready=no \
	ro.vendor.wlan.gen=gen2 \
	persist.vendor.radio.mtk_dsbp_support=1 \
	persist.vendor.mtk_ct_volte_support=1 \
	persist.vendor.radio.mtk_ps2_rat=L/W/G \
	persist.vendor.radio.mtk_ps3_rat=G \
	persist.vendor.log.tel_log_ctrl=1 \
	ro.vendor.mtk_data_config=1 \
	vendor.mtk.vdec.waitkeyframeforplay=1 \
	ro.vendor.mtk_embms_support=1 \
	persist.vendor.duraspeed.support=1 \
	persist.vendor.duraspeed.app.on=1 \
	ro.vendor.mtk_log_hide_gps=0 \
	ro.vendor.mtk_modem_monitor_support=1 \
	ro.vendor.have_aee_feature=1 \
	ro.vendor.mtk_exchange_support=1 \
	ro.vendor.md_log_memdump_wait=15 \
	persist.vendor.mdlog.flush_log_ratio=66311 \
	ro.vendor.mtk_camera_app_version=3 \
	persist.vendor.radio.smart.data.switch=1