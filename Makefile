
VERSION=
obj-m +=  tx2_uncore_smmu.o

DIR=$(PWD)

all:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(DIR) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(DIR) clean
