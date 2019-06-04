################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/cpputest/examples/AllTests/AllTests.cpp \
../lib/cpputest/examples/AllTests/CircularBufferTest.cpp \
../lib/cpputest/examples/AllTests/EventDispatcherTest.cpp \
../lib/cpputest/examples/AllTests/FEDemoTest.cpp \
../lib/cpputest/examples/AllTests/HelloTest.cpp \
../lib/cpputest/examples/AllTests/MockDocumentationTest.cpp \
../lib/cpputest/examples/AllTests/PrinterTest.cpp 

OBJS += \
./lib/cpputest/examples/AllTests/AllTests.o \
./lib/cpputest/examples/AllTests/CircularBufferTest.o \
./lib/cpputest/examples/AllTests/EventDispatcherTest.o \
./lib/cpputest/examples/AllTests/FEDemoTest.o \
./lib/cpputest/examples/AllTests/HelloTest.o \
./lib/cpputest/examples/AllTests/MockDocumentationTest.o \
./lib/cpputest/examples/AllTests/PrinterTest.o 

CPP_DEPS += \
./lib/cpputest/examples/AllTests/AllTests.d \
./lib/cpputest/examples/AllTests/CircularBufferTest.d \
./lib/cpputest/examples/AllTests/EventDispatcherTest.d \
./lib/cpputest/examples/AllTests/FEDemoTest.d \
./lib/cpputest/examples/AllTests/HelloTest.d \
./lib/cpputest/examples/AllTests/MockDocumentationTest.d \
./lib/cpputest/examples/AllTests/PrinterTest.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpputest/examples/AllTests/%.o: ../lib/cpputest/examples/AllTests/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


