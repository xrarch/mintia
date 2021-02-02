LOAD_DIR := Loader
KERN_DIR := Kernel
HAL_DIR  := HAL
DBG_DIR  := 224Debug
DRIVER_DIR := BootDrivers
RTL_DIR  := OSDLL

cleanup:
	make -C $(LOAD_DIR) cleanup
	make -C $(KERN_DIR) cleanup
	make -C $(HAL_DIR) cleanup
	make -C $(DBG_DIR) cleanup
	make -C $(DRIVER_DIR) cleanup
	make -C $(RTL_DIR) cleanup