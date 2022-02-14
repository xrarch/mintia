LOAD_DIR := OSLoader
KERN_DIR := OSKernel
HAL_DIR  := HAL
DBG_DIR  := KDebug
DRIVER_DIR := BootDrivers
RTL_DIR  := OSDLL

cleanup:
	make -C $(LOAD_DIR) cleanup
	make -C $(KERN_DIR) cleanup
	make -C $(HAL_DIR) cleanup
	make -C $(DBG_DIR) cleanup
	make -C $(DRIVER_DIR) cleanup
	make -C $(RTL_DIR) cleanup
	make -C SystemInit cleanup
	make -C Commands cleanup