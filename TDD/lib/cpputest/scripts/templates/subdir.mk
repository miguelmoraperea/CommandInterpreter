################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/cpputest/scripts/templates/ClassName.cpp \
../lib/cpputest/scripts/templates/ClassNameCIoDriverTest.cpp \
../lib/cpputest/scripts/templates/ClassNameCMultipleInstanceTest.cpp \
../lib/cpputest/scripts/templates/ClassNameCTest.cpp \
../lib/cpputest/scripts/templates/ClassNameTest.cpp \
../lib/cpputest/scripts/templates/FunctionNameCTest.cpp \
../lib/cpputest/scripts/templates/InterfaceCTest.cpp \
../lib/cpputest/scripts/templates/InterfaceTest.cpp 

C_SRCS += \
../lib/cpputest/scripts/templates/ClassNameC.c \
../lib/cpputest/scripts/templates/ClassNameCIoDriver.c \
../lib/cpputest/scripts/templates/ClassNameCMultipleInstance.c \
../lib/cpputest/scripts/templates/ClassNameCPolymorphic.c \
../lib/cpputest/scripts/templates/FunctionNameC.c \
../lib/cpputest/scripts/templates/MockClassNameC.c 

OBJS += \
./lib/cpputest/scripts/templates/ClassName.o \
./lib/cpputest/scripts/templates/ClassNameC.o \
./lib/cpputest/scripts/templates/ClassNameCIoDriver.o \
./lib/cpputest/scripts/templates/ClassNameCIoDriverTest.o \
./lib/cpputest/scripts/templates/ClassNameCMultipleInstance.o \
./lib/cpputest/scripts/templates/ClassNameCMultipleInstanceTest.o \
./lib/cpputest/scripts/templates/ClassNameCPolymorphic.o \
./lib/cpputest/scripts/templates/ClassNameCTest.o \
./lib/cpputest/scripts/templates/ClassNameTest.o \
./lib/cpputest/scripts/templates/FunctionNameC.o \
./lib/cpputest/scripts/templates/FunctionNameCTest.o \
./lib/cpputest/scripts/templates/InterfaceCTest.o \
./lib/cpputest/scripts/templates/InterfaceTest.o \
./lib/cpputest/scripts/templates/MockClassNameC.o 

CPP_DEPS += \
./lib/cpputest/scripts/templates/ClassName.d \
./lib/cpputest/scripts/templates/ClassNameCIoDriverTest.d \
./lib/cpputest/scripts/templates/ClassNameCMultipleInstanceTest.d \
./lib/cpputest/scripts/templates/ClassNameCTest.d \
./lib/cpputest/scripts/templates/ClassNameTest.d \
./lib/cpputest/scripts/templates/FunctionNameCTest.d \
./lib/cpputest/scripts/templates/InterfaceCTest.d \
./lib/cpputest/scripts/templates/InterfaceTest.d 

C_DEPS += \
./lib/cpputest/scripts/templates/ClassNameC.d \
./lib/cpputest/scripts/templates/ClassNameCIoDriver.d \
./lib/cpputest/scripts/templates/ClassNameCMultipleInstance.d \
./lib/cpputest/scripts/templates/ClassNameCPolymorphic.d \
./lib/cpputest/scripts/templates/FunctionNameC.d \
./lib/cpputest/scripts/templates/MockClassNameC.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpputest/scripts/templates/%.o: ../lib/cpputest/scripts/templates/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/cpputest/scripts/templates/%.o: ../lib/cpputest/scripts/templates/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


