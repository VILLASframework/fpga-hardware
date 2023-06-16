####################
1) Find name in dmesg
####################

DMESG OUTPUT:
    .....                      ||
    .....                      \/
[    3.845179] xilinx-vdma a0000000.dma: Adding to iommu group 2
[    3.851214] xilinx-vdma a0000000.dma: Xilinx AXI DMA Engine Driver Probed!!



###############################
2) Bind to platform driver

https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841981/Zynq+UltraScale+MPSOC+SMMU?showComments=true&showCommentArea=true#ZynqUltraScaleMPSOCSMMU-5.1.2UsingtheVFIOPlatformDriver
##############################

modprobe vfio_platform reset_required=0
# Unbind Device
echo a0000000.dma > /sys/bus/platform/drivers/xilinx-vdma/unbind
# Bind Device
echo vfio-platform > /sys/bus/platform/devices/a0000000.dma/driver_override
echo a0000000.dma > /sys/bus/platform/drivers_probe



###########
3) Test expected output
###########

=== VFIO device file descriptor 5 ===
Device has 1 region(s):
- Region 0: size=0x10000 offset=0x0 flags=0x7
Successful MMAP of AXI DMA to address 0xffff9f841000
source value: 0x51501995
destination value: 0x0
