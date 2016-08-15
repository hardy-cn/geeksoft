# Makefile2.6
ifneq ($(KERNELRELEASE),)
#kbuild syntax. dependency relationshsip of files and target modules are listed here.

mymodule-objs := hello.o
obj-m := hello.o   

else
PWD  := $(shell pwd)

KVER ?= $(shell uname -r)
KDIR := /lib/modules/$(KVER)/build #KDIRĿ¼��ʵ�����ӵ������Ǹ�Makefile�е��Ǹ�
                                         /usr/src/linux-source-2.6.15/*��
all:
       $(MAKE) -C $(KDIR) M=$(PWD)

clean:
       rm -rf .*.cmd *.o *.mod.c *.ko .tmp_versions

endif
