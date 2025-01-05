#!/bin/bash

# Set p-state to go to 3.7Ghz and increase voltage
/home/ant/Virtualenvs/zenstates/bin/python3 /home/ant/Revisions/ZenStates-Linux/zenstates.py -p 0 -f 0x94 -d 8 -v 0x36 --no-gui

# Set performance governor
for i in $(seq 0 1 191) ; do echo performance | sudo tee /sys/devices/system/cpu/cpu${i}/cpufreq/scaling_governor ; done

/usr/bin/ipmitool sensor thresh FAN1 lower 150 250 300
/usr/bin/ipmitool sensor thresh FAN2 lower 150 250 300
/usr/bin/ipmitool sensor thresh FAN3 lower 150 250 300
/usr/bin/ipmitool sensor thresh FAN4 lower 150 250 300
/usr/bin/ipmitool sensor thresh FAN5 lower 150 250 300
/usr/bin/ipmitool sensor thresh FAN6 lower 150 250 300
/usr/bin/ipmitool sensor thresh FANA lower 150 250 300
/usr/bin/ipmitool sensor thresh FANB lower 150 250 300
/usr/bin/ipmitool raw 0x30 0x45 0x01 0x01 # Full
/usr/bin/ipmitool raw 0x30 0x45 0x01 0x02 # Optimal
/usr/bin/ipmitool bmc reset warm

#sudo hdparm -S 245 /dev/sd
