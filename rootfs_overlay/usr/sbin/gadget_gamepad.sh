modprobe libcomposite
mkdir -p /sys/kernel/config/usb_gadget/kvm
cd /sys/kernel/config/usb_gadget/kvm

echo 0x6969 > idVendor
echo 0x0420 > idProduct
mkdir strings/0x409
echo "0A55FACE" > strings/0x409/serialnumber
echo "Reid Rise" > strings/0x409/manufacturer
echo "Gamepad KVM" > strings/0x409/product

mkdir configs/c.1
mkdir functions/hid.usb0
echo 1 > functions/hid.usb0/protocol
echo 1 > functions/hid.usb0/subclass
echo 8 > functions/hid.usb0/report_length
# HID report descriptor for gamepad
cat /etc/gamepad-report-desc > functions/hid.usb0/report_desc

ln -s functions/hid.usb0 configs/c.1/
ls /sys/class/udc > UDC