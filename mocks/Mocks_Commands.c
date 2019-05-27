/*****************************************************************************
* Module name: Mocks_Commands.c
*
* First written on May 23, 2019 by Miguel.
*
* Module Description:
* This module contains a list of mock commands and their implementation.
*
*****************************************************************************/

#include <stdio.h>
#include "Mocks_Commands.h"
#include "Version.h"

#define NUM_OF_COMMANDS 2

command_t commands_list[NUM_OF_COMMANDS] = {
		{"help", &help},
		{"version", &version}
};

static void printArg(char *arg)
{
	for (int i = 0; arg[i] != '\0'; i++)
	{
		printf("%c", arg[i]);
	}
}

static void printAllArgs(char ** args, int numOfArgs)
{
	if (numOfArgs > 0)
	{
		args++; // skip the command and print only the arguments
		printf("\nPassed arguments:\n");

		while (numOfArgs > 0)
		{
			printArg(*args);
			printf("\n");
			args++;
			numOfArgs--;
		}
	}
}
void help(char ** args, int numOfArgs)
{
	printf("/***** help *****/\r\n");
	printf("Available commands:\r\n");
	printf("- version\r\n");
	printf("- help\r\n");
	printAllArgs(args, numOfArgs);
}

void version(char ** args, int numOfArgs)
{
	printf(VERSION);
	printAllArgs(args, numOfArgs);
}
