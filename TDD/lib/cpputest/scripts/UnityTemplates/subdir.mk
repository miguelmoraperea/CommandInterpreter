################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/cpputest/scripts/UnityTemplates/ClassNameCIoDriverTest.cpp \
../lib/cpputest/scripts/UnityTemplates/ClassNameCMultipleInstanceTest.cpp \
../lib/cpputest/scripts/UnityTemplates/ClassNameCTest.cpp \
../lib/cpputest/scripts/UnityTemplates/FunctionNameCTest.cpp \
../lib/cpputest/scripts/UnityTemplates/InterfaceCTest.cpp 

OBJS += \
./lib/cpputest/scripts/UnityTemplates/ClassNameCIoDriverTest.o \
./lib/cpputest/scripts/UnityTemplates/ClassNameCMultipleInstanceTest.o \
./lib/cpputest/scripts/UnityTemplates/ClassNameCTest.o \
./lib/cpputest/scripts/UnityTemplates/FunctionNameCTest.o \
./lib/cpputest/scripts/UnityTemplates/InterfaceCTest.o 

CPP_DEPS += \
./lib/cpputest/scripts/UnityTemplates/ClassNameCIoDriverTest.d \
./lib/cpputest/scripts/UnityTemplates/ClassNameCMultipleInstanceTest.d \
./lib/cpputest/scripts/UnityTemplates/ClassNameCTest.d \
./lib/cpputest/scripts/UnityTemplates/FunctionNameCTest.d \
./lib/cpputest/scripts/UnityTemplates/InterfaceCTest.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpputest/scripts/UnityTemplates/%.o: ../lib/cpputest/scripts/UnityTemplates/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


