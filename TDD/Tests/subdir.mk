################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Tests/AllTests.cpp \
../Tests/CommandInterpreter_Tests.cpp 

OBJS += \
./Tests/AllTests.o \
./Tests/CommandInterpreter_Tests.o 

CPP_DEPS += \
./Tests/AllTests.d \
./Tests/CommandInterpreter_Tests.d 


# Each subdirectory must supply rules for building sources it contributes
Tests/%.o: ../Tests/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


