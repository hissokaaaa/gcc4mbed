# This target makefile was automatically generated by mbedUpdater.

# Device for which the code should be built.
MBED_DEVICE        := UBLOX_C027

# Can skip parsing of this makefile if user hasn't requested this device.
ifeq "$(findstring $(MBED_DEVICE),$(DEVICES))" "$(MBED_DEVICE)"

# Compiler flags which are specifc to this device.
TARGETS_FOR_DEVICE := $(BUILD_TYPE_TARGET) TARGET_UVISOR_UNSUPPORTED TARGET_CORTEX_M TARGET_LIKE_CORTEX_M3 TARGET_LPC176X TARGET_LPCTarget TARGET_M3 TARGET_NXP TARGET_UBLOX_C027
FEATURES_FOR_DEVICE := FEATURE_LWIP
PERIPHERALS_FOR_DEVICE := DEVICE_ANALOGIN DEVICE_ANALOGOUT DEVICE_CAN DEVICE_DEBUG_AWARENESS DEVICE_ERROR_RED DEVICE_ETHERNET DEVICE_I2C DEVICE_I2CSLAVE DEVICE_INTERRUPTIN DEVICE_PORTIN DEVICE_PORTINOUT DEVICE_PORTOUT DEVICE_PWMOUT DEVICE_RTC DEVICE_SERIAL DEVICE_SERIAL_FC DEVICE_SLEEP DEVICE_SPI DEVICE_SPISLAVE DEVICE_STDIO_MESSAGES
GCC_DEFINES := $(patsubst %,-D%,$(TARGETS_FOR_DEVICE))
GCC_DEFINES += $(patsubst %,-D%=1,$(FEATURES_FOR_DEVICE))
GCC_DEFINES += $(patsubst %,-D%=1,$(PERIPHERALS_FOR_DEVICE))
GCC_DEFINES += -D__CORTEX_M3 -DARM_MATH_CM3 -D__CMSIS_RTOS -D__MBED_CMSIS_RTOS_CM
GCC_DEFINES += -DTARGET_LPC1768

C_FLAGS   := -mcpu=cortex-m3 -mthumb
ASM_FLAGS := -mcpu=cortex-m3 -mthumb
LD_FLAGS  := -mcpu=cortex-m3 -mthumb

# Extra platform specific object files to link into file binary.
DEVICE_OBJECTS := 

# Version of MRI library to use for this device.
DEVICE_MRI_LIB := 

# Determine all mbed source folders which are a match for this device so that it only needs to be done once.
DEVICE_MBED_DIRS := $(call filter_dirs,$(RAW_MBED_DIRS),$(TARGETS_FOR_DEVICE),$(FEATURES_FOR_DEVICE))

# Linker script to be used.  Indicates what should be placed where in memory.
UBLOX_C027_LSCRIPT  ?= $(call find_target_linkscript,$(DEVICE_MBED_DIRS))
LSCRIPT := $(UBLOX_C027_LSCRIPT)

include $(GCC4MBED_DIR)/build/device-common.mk

else
# Have an empty rule for this device since it isn't supported.
.PHONY: $(MBED_DEVICE)

ifeq "$(OS)" "Windows_NT"
$(MBED_DEVICE):
	@REM >nul
else
$(MBED_DEVICE):
	@#
endif
endif # ifeq "$(findstring $(MBED_DEVICE),$(DEVICES))"...
