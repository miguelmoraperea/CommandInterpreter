################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpputest/platforms_examples/armcc/LPC1833/src/dummy.c 

OBJS += \
./lib/cpputest/platforms_examples/armcc/LPC1833/src/dummy.o 

C_DEPS += \
./lib/cpputest/platforms_examples/armcc/LPC1833/src/dummy.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpputest/platforms_examples/armcc/LPC1833/src/%.o: ../lib/cpputest/platforms_examples/armcc/LPC1833/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


