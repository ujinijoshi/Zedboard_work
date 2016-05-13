################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/hoping_pps_sync.c \
../src/platform.c \
../src/xfir.c \
../src/xfir_linux.c 

OBJS += \
./src/hoping_pps_sync.o \
./src/platform.o \
./src/xfir.o \
./src/xfir_linux.o 

C_DEPS += \
./src/hoping_pps_sync.d \
./src/platform.d \
./src/xfir.d \
./src/xfir_linux.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../standalone_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


