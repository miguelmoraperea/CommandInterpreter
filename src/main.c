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

int main(void)
{
	char inputLine[30];

	CommandInt_init();

	while(1)
	{
		printf("> ");
		gets(inputLine);
		CommandInt_handle(inputLine);
	}

	return 0;
}
