# The TARGET variable determines what target system the application is
# compiled for. It either refers to an XN file in the source directories
# or a valid argument for the --target option when compiling
TARGET = XUF208-256-TQ64-C10

# The APP_NAME variable determines the name of the final .xe file. It should
# not include the .xe postfix. If left blank the name will default to
# the project name
APP_NAME = adc

# The USED_MODULES variable lists other module used by the application.
USED_MODULES = module_dfu module_usb_audio module_usb_device module_usb_shared module_xud

# The flags passed to xcc when building the application
# You can also set the following to override flags for a particular language:
# XCC_XC_FLAGS, XCC_C_FLAGS, XCC_ASM_FLAGS, XCC_CPP_FLAGS
# If the variable XCC_MAP_FLAGS is set it overrides the flags passed to
# xcc for the final link (mapping) stage.
XCC_FLAGS_REV0 = -O3 -lquadflash -DQUAD_SPI_FLASH=1 -DXUD_SERIES_SUPPORT=4
XCC_FLAGS_REV1 = -O3 -lquadflash -DQUAD_SPI_FLASH=1 -DXUD_SERIES_SUPPORT=4
XCC_FLAGS_REV2 = -O3 -lquadflash -DQUAD_SPI_FLASH=1 -DXUD_SERIES_SUPPORT=4

# The XCORE_ARM_PROJECT variable, if set to 1, configures this
# project to create both xCORE and ARM binaries.
XCORE_ARM_PROJECT = 0

# The VERBOSE variable, if set to 1, enables verbose output from the make system.
VERBOSE = 0

XMOS_MAKE_PATH ?= ../..
-include $(XMOS_MAKE_PATH)/xcommon/module_xcommon/build/Makefile.common

MODULE_LIBRARIES = xud_x200
