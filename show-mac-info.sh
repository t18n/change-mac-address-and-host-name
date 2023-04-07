#! /bin/sh

# Get HOSTNAME
echo "Hostname:                 $(scutil --get HostName)"

# Get MAC address
echo "MAC Address:              $(ifconfig en0 | grep ether | awk '{print $2}')"

# Get Hardware MAC address
echo "MAC Address on Hardware:  $(networksetup -listallhardwareports | awk -v RS= '/en0/{print $NF}')"