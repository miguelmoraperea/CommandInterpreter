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
void help(char ** args)
{
	printf("/***** help *****/\r\n");
	printf("Available commands:\r\n");
	printf("- version\r\n");
	printf("- help\r\n");
}

void version(char ** args)
{
	printf(VERSION);
}
