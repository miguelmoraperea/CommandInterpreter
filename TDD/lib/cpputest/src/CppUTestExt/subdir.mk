################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/cpputest/src/CppUTestExt/CodeMemoryReportFormatter.cpp \
../lib/cpputest/src/CppUTestExt/IEEE754ExceptionsPlugin.cpp \
../lib/cpputest/src/CppUTestExt/MemoryReportAllocator.cpp \
../lib/cpputest/src/CppUTestExt/MemoryReportFormatter.cpp \
../lib/cpputest/src/CppUTestExt/MemoryReporterPlugin.cpp \
../lib/cpputest/src/CppUTestExt/MockActualCall.cpp \
../lib/cpputest/src/CppUTestExt/MockExpectedCall.cpp \
../lib/cpputest/src/CppUTestExt/MockExpectedCallsList.cpp \
../lib/cpputest/src/CppUTestExt/MockFailure.cpp \
../lib/cpputest/src/CppUTestExt/MockNamedValue.cpp \
../lib/cpputest/src/CppUTestExt/MockSupport.cpp \
../lib/cpputest/src/CppUTestExt/MockSupportPlugin.cpp \
../lib/cpputest/src/CppUTestExt/MockSupport_c.cpp \
../lib/cpputest/src/CppUTestExt/OrderedTest.cpp 

OBJS += \
./lib/cpputest/src/CppUTestExt/CodeMemoryReportFormatter.o \
./lib/cpputest/src/CppUTestExt/IEEE754ExceptionsPlugin.o \
./lib/cpputest/src/CppUTestExt/MemoryReportAllocator.o \
./lib/cpputest/src/CppUTestExt/MemoryReportFormatter.o \
./lib/cpputest/src/CppUTestExt/MemoryReporterPlugin.o \
./lib/cpputest/src/CppUTestExt/MockActualCall.o \
./lib/cpputest/src/CppUTestExt/MockExpectedCall.o \
./lib/cpputest/src/CppUTestExt/MockExpectedCallsList.o \
./lib/cpputest/src/CppUTestExt/MockFailure.o \
./lib/cpputest/src/CppUTestExt/MockNamedValue.o \
./lib/cpputest/src/CppUTestExt/MockSupport.o \
./lib/cpputest/src/CppUTestExt/MockSupportPlugin.o \
./lib/cpputest/src/CppUTestExt/MockSupport_c.o \
./lib/cpputest/src/CppUTestExt/OrderedTest.o 

CPP_DEPS += \
./lib/cpputest/src/CppUTestExt/CodeMemoryReportFormatter.d \
./lib/cpputest/src/CppUTestExt/IEEE754ExceptionsPlugin.d \
./lib/cpputest/src/CppUTestExt/MemoryReportAllocator.d \
./lib/cpputest/src/CppUTestExt/MemoryReportFormatter.d \
./lib/cpputest/src/CppUTestExt/MemoryReporterPlugin.d \
./lib/cpputest/src/CppUTestExt/MockActualCall.d \
./lib/cpputest/src/CppUTestExt/MockExpectedCall.d \
./lib/cpputest/src/CppUTestExt/MockExpectedCallsList.d \
./lib/cpputest/src/CppUTestExt/MockFailure.d \
./lib/cpputest/src/CppUTestExt/MockNamedValue.d \
./lib/cpputest/src/CppUTestExt/MockSupport.d \
./lib/cpputest/src/CppUTestExt/MockSupportPlugin.d \
./lib/cpputest/src/CppUTestExt/MockSupport_c.d \
./lib/cpputest/src/CppUTestExt/OrderedTest.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpputest/src/CppUTestExt/%.o: ../lib/cpputest/src/CppUTestExt/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


