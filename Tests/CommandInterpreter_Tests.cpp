/*****************************************************************************
* Module name: CommandInterpreter_Tests.cpp
*
* First written on May 13, 2019 by Miguel.
*
* Module Description:
* This module contains all the tests for Command Interpreter.
*
*****************************************************************************/

#include "CppUTest/TestHarness.h"

extern "C"
{
#include <string.h>
#include <stdio.h>
#include "CommandInterpreter.h"
}

TEST_GROUP(CommandInterpreter)
{

#define MAX_INPUT_SIZE 64
#define MAX_NUM_OF_ARGS	4

    void setup ()
    {
    	CommandInt_init();
    }

    void teardown()
    {

    }
};

TEST(CommandInterpreter, InitializeWithNull)
{
	LONGS_EQUAL(SUCCESS, CommandInt_init());

	char **args = CommandInt_getArgs();

	for (int i = 0; i < MAX_NUM_OF_ARGS; i++)
	{
		STRCMP_EQUAL(NULL, args[i]);
	}
}

TEST(CommandInterpreter, ParseIntoTokens)
{
	char testCommand[MAX_INPUT_SIZE] = "command arg1 arg2 arg3";

	CommandInt_handle(testCommand);
	char **args = CommandInt_getArgs();

	STRCMP_EQUAL(args[0], "command");
	STRCMP_EQUAL(args[1], "arg1");
	STRCMP_EQUAL(args[2], "arg2");
	STRCMP_EQUAL(args[3], "arg3");
}

TEST(CommandInterpreter, ParseIntoTokensExtraArguments)
{
	char testCommand[MAX_INPUT_SIZE] = "command arg1 arg2 arg3 arg4 arg5 arg6";

	CommandInt_handle(testCommand);
	char **args = CommandInt_getArgs();

	STRCMP_EQUAL("command", args[0]);
	STRCMP_EQUAL("arg1", args[1]);
	STRCMP_EQUAL("arg2", args[2]);
	STRCMP_EQUAL("arg3", args[3]);
	STRCMP_EQUAL("arg4", args[4]);
	STRCMP_EQUAL("arg5", args[5]);
	STRCMP_EQUAL("arg6", args[6]);
}

TEST(CommandInterpreter, CleanArgsOnEachCommand)
{
	char testCommand[MAX_INPUT_SIZE] = "command arg1 arg2 arg3 arg4 arg5 arg6";
	CommandInt_handle(testCommand);
	char **args = CommandInt_getArgs();

	STRCMP_EQUAL("command", args[0]);
	STRCMP_EQUAL("arg1", args[1]);
	STRCMP_EQUAL("arg2", args[2]);
	STRCMP_EQUAL("arg3", args[3]);
	STRCMP_EQUAL("arg4", args[4]);
	STRCMP_EQUAL("arg5", args[5]);
	STRCMP_EQUAL("arg6", args[6]);

	char testCommand2[MAX_INPUT_SIZE] = "command2 test1 test2 test3 test4";
	CommandInt_handle(testCommand2);
	char **args2 = CommandInt_getArgs();

	STRCMP_EQUAL("command2", args2[0]);	
	STRCMP_EQUAL("test1", args2[1]);	
	STRCMP_EQUAL("test2", args2[2]);	
	STRCMP_EQUAL("test3", args2[3]);	
	STRCMP_EQUAL("test4", args2[4]);	
	STRCMP_EQUAL(NULL, args2[5]);	
	STRCMP_EQUAL(NULL, args2[6]);	
}

TEST(CommandInterpreter, AcceptIfCommandExists)
{
	char testCommand[MAX_INPUT_SIZE] = "version param1 param2";
	LONGS_EQUAL(SUCCESS, CommandInt_handle(testCommand));

	char testCommand2[MAX_INPUT_SIZE] = "help";
	LONGS_EQUAL(SUCCESS, CommandInt_handle(testCommand2));
}

TEST(CommandInterpreter, RejectIfCommandDoesNotExists)
{
	char testCommand[MAX_INPUT_SIZE] = "something param1 param2";
	LONGS_EQUAL(ERROR, CommandInt_handle(testCommand));

	char testCommand2[MAX_INPUT_SIZE] = "versions";
	LONGS_EQUAL(ERROR, CommandInt_handle(testCommand2));
}
