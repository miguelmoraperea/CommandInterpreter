/*****************************************************************************
* Module name: main.c
*
* First written on May 23, 2019 by Miguel.
*
* Module Description:
* 
*
*****************************************************************************/

#include <stdio.h>
#include "CommandInterpreter.h"

#define MAX_SIZE_OF_INPUT_LINE	128

int main(void)
{
	char userInputLine[MAX_SIZE_OF_INPUT_LINE];

	CommandInt_init();

	while(1)
	{
		printf("> ");
		gets(userInputLine);
		CommandInt_handle(userInputLine);
	}

	return 0;
}
