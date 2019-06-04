################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/cpputest/scripts/templates/ProjectTemplate/tests/AllTests.cpp 

OBJS += \
./lib/cpputest/scripts/templates/ProjectTemplate/tests/AllTests.o 

CPP_DEPS += \
./lib/cpputest/scripts/templates/ProjectTemplate/tests/AllTests.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpputest/scripts/templates/ProjectTemplate/tests/%.o: ../lib/cpputest/scripts/templates/ProjectTemplate/tests/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


