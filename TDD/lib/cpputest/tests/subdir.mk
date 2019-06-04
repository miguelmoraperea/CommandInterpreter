################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/cpputest/tests/AllTests.cpp \
../lib/cpputest/tests/AllocLetTestFreeTest.cpp \
../lib/cpputest/tests/AllocationInCppFile.cpp \
../lib/cpputest/tests/CheatSheetTest.cpp \
../lib/cpputest/tests/CommandLineArgumentsTest.cpp \
../lib/cpputest/tests/CommandLineTestRunnerTest.cpp \
../lib/cpputest/tests/JUnitOutputTest.cpp \
../lib/cpputest/tests/MemoryLeakDetectorTest.cpp \
../lib/cpputest/tests/MemoryLeakWarningTest.cpp \
../lib/cpputest/tests/MemoryOperatorOverloadTest.cpp \
../lib/cpputest/tests/PluginTest.cpp \
../lib/cpputest/tests/PreprocessorTest.cpp \
../lib/cpputest/tests/SetPluginTest.cpp \
../lib/cpputest/tests/SimpleMutexTest.cpp \
../lib/cpputest/tests/SimpleStringTest.cpp \
../lib/cpputest/tests/TeamCityOutputTest.cpp \
../lib/cpputest/tests/TestFailureNaNTest.cpp \
../lib/cpputest/tests/TestFailureTest.cpp \
../lib/cpputest/tests/TestFilterTest.cpp \
../lib/cpputest/tests/TestHarness_cTest.cpp \
../lib/cpputest/tests/TestInstallerTest.cpp \
../lib/cpputest/tests/TestMemoryAllocatorTest.cpp \
../lib/cpputest/tests/TestOutputTest.cpp \
../lib/cpputest/tests/TestRegistryTest.cpp \
../lib/cpputest/tests/TestResultTest.cpp \
../lib/cpputest/tests/TestUTestMacro.cpp \
../lib/cpputest/tests/TestUTestStringMacro.cpp \
../lib/cpputest/tests/UtestPlatformTest.cpp \
../lib/cpputest/tests/UtestTest.cpp 

C_SRCS += \
../lib/cpputest/tests/AllocLetTestFree.c \
../lib/cpputest/tests/AllocationInCFile.c \
../lib/cpputest/tests/TestHarness_cTestCFile.c 

OBJS += \
./lib/cpputest/tests/AllTests.o \
./lib/cpputest/tests/AllocLetTestFree.o \
./lib/cpputest/tests/AllocLetTestFreeTest.o \
./lib/cpputest/tests/AllocationInCFile.o \
./lib/cpputest/tests/AllocationInCppFile.o \
./lib/cpputest/tests/CheatSheetTest.o \
./lib/cpputest/tests/CommandLineArgumentsTest.o \
./lib/cpputest/tests/CommandLineTestRunnerTest.o \
./lib/cpputest/tests/JUnitOutputTest.o \
./lib/cpputest/tests/MemoryLeakDetectorTest.o \
./lib/cpputest/tests/MemoryLeakWarningTest.o \
./lib/cpputest/tests/MemoryOperatorOverloadTest.o \
./lib/cpputest/tests/PluginTest.o \
./lib/cpputest/tests/PreprocessorTest.o \
./lib/cpputest/tests/SetPluginTest.o \
./lib/cpputest/tests/SimpleMutexTest.o \
./lib/cpputest/tests/SimpleStringTest.o \
./lib/cpputest/tests/TeamCityOutputTest.o \
./lib/cpputest/tests/TestFailureNaNTest.o \
./lib/cpputest/tests/TestFailureTest.o \
./lib/cpputest/tests/TestFilterTest.o \
./lib/cpputest/tests/TestHarness_cTest.o \
./lib/cpputest/tests/TestHarness_cTestCFile.o \
./lib/cpputest/tests/TestInstallerTest.o \
./lib/cpputest/tests/TestMemoryAllocatorTest.o \
./lib/cpputest/tests/TestOutputTest.o \
./lib/cpputest/tests/TestRegistryTest.o \
./lib/cpputest/tests/TestResultTest.o \
./lib/cpputest/tests/TestUTestMacro.o \
./lib/cpputest/tests/TestUTestStringMacro.o \
./lib/cpputest/tests/UtestPlatformTest.o \
./lib/cpputest/tests/UtestTest.o 

CPP_DEPS += \
./lib/cpputest/tests/AllTests.d \
./lib/cpputest/tests/AllocLetTestFreeTest.d \
./lib/cpputest/tests/AllocationInCppFile.d \
./lib/cpputest/tests/CheatSheetTest.d \
./lib/cpputest/tests/CommandLineArgumentsTest.d \
./lib/cpputest/tests/CommandLineTestRunnerTest.d \
./lib/cpputest/tests/JUnitOutputTest.d \
./lib/cpputest/tests/MemoryLeakDetectorTest.d \
./lib/cpputest/tests/MemoryLeakWarningTest.d \
./lib/cpputest/tests/MemoryOperatorOverloadTest.d \
./lib/cpputest/tests/PluginTest.d \
./lib/cpputest/tests/PreprocessorTest.d \
./lib/cpputest/tests/SetPluginTest.d \
./lib/cpputest/tests/SimpleMutexTest.d \
./lib/cpputest/tests/SimpleStringTest.d \
./lib/cpputest/tests/TeamCityOutputTest.d \
./lib/cpputest/tests/TestFailureNaNTest.d \
./lib/cpputest/tests/TestFailureTest.d \
./lib/cpputest/tests/TestFilterTest.d \
./lib/cpputest/tests/TestHarness_cTest.d \
./lib/cpputest/tests/TestInstallerTest.d \
./lib/cpputest/tests/TestMemoryAllocatorTest.d \
./lib/cpputest/tests/TestOutputTest.d \
./lib/cpputest/tests/TestRegistryTest.d \
./lib/cpputest/tests/TestResultTest.d \
./lib/cpputest/tests/TestUTestMacro.d \
./lib/cpputest/tests/TestUTestStringMacro.d \
./lib/cpputest/tests/UtestPlatformTest.d \
./lib/cpputest/tests/UtestTest.d 

C_DEPS += \
./lib/cpputest/tests/AllocLetTestFree.d \
./lib/cpputest/tests/AllocationInCFile.d \
./lib/cpputest/tests/TestHarness_cTestCFile.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpputest/tests/%.o: ../lib/cpputest/tests/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/cpputest/tests/%.o: ../lib/cpputest/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


