if nvidia-smi  | grep -q 'GeForce GTX 980 Ti' ; then
    nvidia-settings -a '[gpu:0]/GPUGraphicsClockOffset[3]=150'
    nvidia-settings -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=350'
fi
