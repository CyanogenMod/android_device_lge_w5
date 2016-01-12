#!/sbin/sh

model=`cat /proc/cmdline | awk '{print $16}'| awk -F= '{print $2}'`

rm /system/bin/irrcServer
rm -rf /system/app/QuicksetSDK
rm -rf /system/app/QuickRemote

case $model in
     "LG-D320")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-D320.kl > /system/usr/keylayout/Generic.kl
          ;;
     "LG-D320n")
	cat /system/usr/keylayout/Generic-D320.kl > /system/usr/keylayout/Generic.kl
          ;;
     "LG-D325")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-D325.kl > /system/usr/keylayout/Generic.kl
          ;; 
     "LG-D325f8")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-D325.kl > /system/usr/keylayout/Generic.kl
          ;;
     "LG-D320f8")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-D320.kl > /system/usr/keylayout/Generic.kl
	;;
     "LG-D325F8")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-D325.kl > /system/usr/keylayout/Generic.kl
          ;;
     "LG-D320F8")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-D320.kl > /system/usr/keylayout/Generic.kl
          ;;
     "LG-D320TR")
        rm /system/etc/permissions/android.hardware.nfc.xml
        rm /system/etc/permissions/android.hardware.nfc.hce.xml
        rm /system/lib/hw/nfc_nci.w5.so
        rm -rf /system/app/NfcNci
        cat /system/usr/keylayout/Generic-D320.kl > /system/usr/keylayout/Generic.kl
          ;;
     "LGMS323")
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
	cat /system/usr/keylayout/Generic-MS323.kl > /system/usr/keylayout/Generic.kl
	rm -rf /system/vendor/firmware/keymaster/
	mv     /system/vendor/firmware/keymaster.ms323/ /system/vendor/firmware/keymaster/
          ;;
     *)
	rm /system/etc/permissions/android.hardware.nfc.xml
	rm /system/etc/permissions/android.hardware.nfc.hce.xml
	rm /system/lib/hw/nfc_nci.w5.so
	rm -rf /system/app/NfcNci
          ;;
esac
