################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/cpputest/src/Platforms/Symbian/SymbianMemoryLeakWarning.cpp \
../lib/cpputest/src/Platforms/Symbian/UtestPlatform.cpp 

OBJS += \
./lib/cpputest/src/Platforms/Symbian/SymbianMemoryLeakWarning.o \
./lib/cpputest/src/Platforms/Symbian/UtestPlatform.o 

CPP_DEPS += \
./lib/cpputest/src/Platforms/Symbian/SymbianMemoryLeakWarning.d \
./lib/cpputest/src/Platforms/Symbian/UtestPlatform.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpputest/src/Platforms/Symbian/%.o: ../lib/cpputest/src/Platforms/Symbian/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"$(dir $(abspath $(CURDIR)))inc" -I"$(dir $(abspath $(CURDIR)))mocks" -I"$(dir $(abspath $(CURDIR)))lib/cpputest/include" -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


