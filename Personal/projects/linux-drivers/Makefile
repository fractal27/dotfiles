# SPDX-License-Identifier: GPL-2.0
#
# Makefile for the kernel USB device drivers.
#

# Object files in subdirectories

ifneq ($(KERNELRELEASE),)
obj-m := xserve-frontpanel.o
else
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
all:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules
install:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules_install
%:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) $@
endif
