# Makefile for hello-module

# This Makefile is used to build the hello-module kernel module.
# It assumes that the kernel source is located at $(KERNEL_SRC) and
# that the current directory contains the source code for the module.
obj-m := hello-module.o
SRC := $(shell pwd)

all: modules

phony+=modules
modules:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules

phony+=modules_install
modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install

phony+=clean
clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) clean

.PHONY: $(phony)
