obj-m += dell-wmi.o

PWD := $(shell pwd)

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	
install:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules_install
	$(shell depmod)
	
