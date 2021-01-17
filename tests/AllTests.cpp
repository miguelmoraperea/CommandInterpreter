/*****************************************************************************
* Module name: AllTests.cpp
*
* First written on 2019/05/13 by Miguel Mora Perea.
*
* Module Description:
* Executes all the CommandInterpreter tests.
*
*****************************************************************************/
#include "CppUTest/CommandLineTestRunner.h"

int main(int ac, char **av)
{
    return CommandLineTestRunner::RunAllTests(ac, av);
}
