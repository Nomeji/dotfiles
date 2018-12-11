#/bin/bash
echo "Input new mac address : "
read MAC

sudo ip link set wlp7s0 down
sudo ip link set wlp7s0 address $MAC
sudo ip link set wlp7s0 up
sudo ip link show wlp7s0
