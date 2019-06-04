################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/cpputest/examples/ApplicationLib/CircularBuffer.cpp \
../lib/cpputest/examples/ApplicationLib/EventDispatcher.cpp \
../lib/cpputest/examples/ApplicationLib/Printer.cpp 

C_SRCS += \
../lib/cpputest/examples/ApplicationLib/hello.c 

OBJS += \
./lib/cpputest/examples/ApplicationLib/CircularBuffer.o \
./lib/cpputest/examples/ApplicationLib/EventDispatcher.o \
./lib/cpputest/examples/ApplicationLib/Printer.o \
./lib/cpputest/examples/ApplicationLib/hello.o 

CPP_DEPS += \
./lib/cpputest/examples/ApplicationLib/CircularBuffer.d \
./lib/cpputest/examples/ApplicationLib/EventDispatcher.d \
./lib/cpputest/examples/ApplicationLib/Printer.d 

C_DEPS += \
./lib/cpputest/examples/ApplicationLib/hello.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpputest/examples/ApplicationLib/%.o: ../lib/cpputest/examples/ApplicationLib/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/cpputest/examples/ApplicationLib/%.o: ../lib/cpputest/examples/ApplicationLib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


