/*****************************************************************************
* Module name: main.c
*
* First written on May 23, 2019 by Miguel.
*
*****************************************************************************/

#include <stdio.h>
#include "CommandInterpreter.h"

#define MAX_SIZE_OF_INPUT_LINE  128

int main(void)
{
    char userInputLine[MAX_SIZE_OF_INPUT_LINE];

    CommandInt_Init();

    while(1)
    {
        printf("> ");
        fgets(userInputLine, sizeof(userInputLine), stdin);
        CommandInt_Handle(userInputLine);
    }

    return 0;
}
