if /usr/bin/nvidia-smi  | /bin/grep -q 'GeForce GTX 980 Ti' ; then
    /usr/bin/nvidia-settings -a '[gpu:0]/GPUGraphicsClockOffset[3]=75'
    /usr/bin/nvidia-settings -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=150'
fi

#setxkbmap -v gelatin -variant ergodox
