################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/cpputest/src/CppUTest/CommandLineArguments.cpp \
../lib/cpputest/src/CppUTest/CommandLineTestRunner.cpp \
../lib/cpputest/src/CppUTest/JUnitTestOutput.cpp \
../lib/cpputest/src/CppUTest/MemoryLeakDetector.cpp \
../lib/cpputest/src/CppUTest/MemoryLeakWarningPlugin.cpp \
../lib/cpputest/src/CppUTest/SimpleMutex.cpp \
../lib/cpputest/src/CppUTest/SimpleString.cpp \
../lib/cpputest/src/CppUTest/TeamCityTestOutput.cpp \
../lib/cpputest/src/CppUTest/TestFailure.cpp \
../lib/cpputest/src/CppUTest/TestFilter.cpp \
../lib/cpputest/src/CppUTest/TestHarness_c.cpp \
../lib/cpputest/src/CppUTest/TestMemoryAllocator.cpp \
../lib/cpputest/src/CppUTest/TestOutput.cpp \
../lib/cpputest/src/CppUTest/TestPlugin.cpp \
../lib/cpputest/src/CppUTest/TestRegistry.cpp \
../lib/cpputest/src/CppUTest/TestResult.cpp \
../lib/cpputest/src/CppUTest/TestTestingFixture.cpp \
../lib/cpputest/src/CppUTest/Utest.cpp 

OBJS += \
./lib/cpputest/src/CppUTest/CommandLineArguments.o \
./lib/cpputest/src/CppUTest/CommandLineTestRunner.o \
./lib/cpputest/src/CppUTest/JUnitTestOutput.o \
./lib/cpputest/src/CppUTest/MemoryLeakDetector.o \
./lib/cpputest/src/CppUTest/MemoryLeakWarningPlugin.o \
./lib/cpputest/src/CppUTest/SimpleMutex.o \
./lib/cpputest/src/CppUTest/SimpleString.o \
./lib/cpputest/src/CppUTest/TeamCityTestOutput.o \
./lib/cpputest/src/CppUTest/TestFailure.o \
./lib/cpputest/src/CppUTest/TestFilter.o \
./lib/cpputest/src/CppUTest/TestHarness_c.o \
./lib/cpputest/src/CppUTest/TestMemoryAllocator.o \
./lib/cpputest/src/CppUTest/TestOutput.o \
./lib/cpputest/src/CppUTest/TestPlugin.o \
./lib/cpputest/src/CppUTest/TestRegistry.o \
./lib/cpputest/src/CppUTest/TestResult.o \
./lib/cpputest/src/CppUTest/TestTestingFixture.o \
./lib/cpputest/src/CppUTest/Utest.o 

CPP_DEPS += \
./lib/cpputest/src/CppUTest/CommandLineArguments.d \
./lib/cpputest/src/CppUTest/CommandLineTestRunner.d \
./lib/cpputest/src/CppUTest/JUnitTestOutput.d \
./lib/cpputest/src/CppUTest/MemoryLeakDetector.d \
./lib/cpputest/src/CppUTest/MemoryLeakWarningPlugin.d \
./lib/cpputest/src/CppUTest/SimpleMutex.d \
./lib/cpputest/src/CppUTest/SimpleString.d \
./lib/cpputest/src/CppUTest/TeamCityTestOutput.d \
./lib/cpputest/src/CppUTest/TestFailure.d \
./lib/cpputest/src/CppUTest/TestFilter.d \
./lib/cpputest/src/CppUTest/TestHarness_c.d \
./lib/cpputest/src/CppUTest/TestMemoryAllocator.d \
./lib/cpputest/src/CppUTest/TestOutput.d \
./lib/cpputest/src/CppUTest/TestPlugin.d \
./lib/cpputest/src/CppUTest/TestRegistry.d \
./lib/cpputest/src/CppUTest/TestResult.d \
./lib/cpputest/src/CppUTest/TestTestingFixture.d \
./lib/cpputest/src/CppUTest/Utest.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpputest/src/CppUTest/%.o: ../lib/cpputest/src/CppUTest/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


