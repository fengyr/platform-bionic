libc_bionic_src_files_arm += \
    arch-arm/cortex-a9/bionic/stpcpy.S \
    arch-arm/cortex-a9/bionic/strcat.S \
    arch-arm/cortex-a9/bionic/strcmp.S \
    arch-arm/cortex-a9/bionic/strcpy.S \
    arch-arm/cortex-a9/bionic/strlen.S \

libc_bionic_src_files_arm += \
    arch-arm/generic/bionic/memcmp.S \

libc_bionic_src_files_arm += \
    arch-arm/denver/bionic/memmove.S \

ifeq ($(strip $(ARCH_ARM_HAVE_NEON)),true)
libc_bionic_src_files_arm += \
    arch-arm/cortex-a9/bionic/memcpy.S \
    arch-arm/cortex-a9/bionic/memset.S \
    arch-arm/cortex-a9/bionic/__strcat_chk.S \
    arch-arm/cortex-a9/bionic/__strcpy_chk.S
else
#generic
libc_bionic_src_files_arm += \
    arch-arm/generic/bionic/memcpy.S \
    arch-arm/generic/bionic/memset.S \
    bionic/__strcat_chk.cpp \
    bionic/__strcpy_chk.cpp
endif
