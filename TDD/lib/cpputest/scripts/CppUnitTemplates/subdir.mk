################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/cpputest/scripts/CppUnitTemplates/ClassName.cpp \
../lib/cpputest/scripts/CppUnitTemplates/ClassNameCMultipleInstanceTest.cpp \
../lib/cpputest/scripts/CppUnitTemplates/ClassNameCTest.cpp \
../lib/cpputest/scripts/CppUnitTemplates/ClassNameTest.cpp \
../lib/cpputest/scripts/CppUnitTemplates/InterfaceCTest.cpp \
../lib/cpputest/scripts/CppUnitTemplates/InterfaceTest.cpp 

C_SRCS += \
../lib/cpputest/scripts/CppUnitTemplates/ClassNameC.c \
../lib/cpputest/scripts/CppUnitTemplates/ClassNameCMultipleInstance.c \
../lib/cpputest/scripts/CppUnitTemplates/ClassNameCPolymorphic.c \
../lib/cpputest/scripts/CppUnitTemplates/MockClassNameC.c 

OBJS += \
./lib/cpputest/scripts/CppUnitTemplates/ClassName.o \
./lib/cpputest/scripts/CppUnitTemplates/ClassNameC.o \
./lib/cpputest/scripts/CppUnitTemplates/ClassNameCMultipleInstance.o \
./lib/cpputest/scripts/CppUnitTemplates/ClassNameCMultipleInstanceTest.o \
./lib/cpputest/scripts/CppUnitTemplates/ClassNameCPolymorphic.o \
./lib/cpputest/scripts/CppUnitTemplates/ClassNameCTest.o \
./lib/cpputest/scripts/CppUnitTemplates/ClassNameTest.o \
./lib/cpputest/scripts/CppUnitTemplates/InterfaceCTest.o \
./lib/cpputest/scripts/CppUnitTemplates/InterfaceTest.o \
./lib/cpputest/scripts/CppUnitTemplates/MockClassNameC.o 

CPP_DEPS += \
./lib/cpputest/scripts/CppUnitTemplates/ClassName.d \
./lib/cpputest/scripts/CppUnitTemplates/ClassNameCMultipleInstanceTest.d \
./lib/cpputest/scripts/CppUnitTemplates/ClassNameCTest.d \
./lib/cpputest/scripts/CppUnitTemplates/ClassNameTest.d \
./lib/cpputest/scripts/CppUnitTemplates/InterfaceCTest.d \
./lib/cpputest/scripts/CppUnitTemplates/InterfaceTest.d 

C_DEPS += \
./lib/cpputest/scripts/CppUnitTemplates/ClassNameC.d \
./lib/cpputest/scripts/CppUnitTemplates/ClassNameCMultipleInstance.d \
./lib/cpputest/scripts/CppUnitTemplates/ClassNameCPolymorphic.d \
./lib/cpputest/scripts/CppUnitTemplates/MockClassNameC.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpputest/scripts/CppUnitTemplates/%.o: ../lib/cpputest/scripts/CppUnitTemplates/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/cpputest/scripts/CppUnitTemplates/%.o: ../lib/cpputest/scripts/CppUnitTemplates/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


