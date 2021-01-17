/*****************************************************************************
* Module name: CommandInterpreter.c
*
* First written on 2019/05/13 by Miguel Mora Perea.
*
* Module Description:
* This module contains functions that parse an input line into arguments and
* executes the command if is found in a list of predefined commands.
*
*****************************************************************************/

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include "CommandInterpreter.h"
#include "Mocks_Commands.h"

#define TOK_DELIM           " \t\r\n\a"
#define MAX_NUM_OF_ARGS     4

static char **args;
static int argsBufferSize = -1;
static int numOfArgs = -1;
static int usedArgs = 0;


static int CommandInt_IsValidCommand(void)
{
    for (int i = 0; i < NUM_OF_COMMANDS; ++i)
    {
        if (strcmp(args[0], commands_list[i].name) == 0)
        {
            return i;
        }
    }

    return -1;
}

static void *Allocate(int numOfElements, size_t sizeOfElement)
{
    void *ptr = (void *)calloc(numOfElements, sizeOfElement);

    if (ptr == NULL )
    {
        printf("Error allocating memory");
        exit(1);
    }

    return ptr;
}


static ci_result_t ParseIntoArgs(char * inputLine)
{
    CommandInt_Destroy();

    argsBufferSize = MAX_NUM_OF_ARGS;
    args = (char **)Allocate(argsBufferSize, sizeof(char *));

    char *token = strtok(inputLine, TOK_DELIM);

    if (token == NULL )
    {
        return ERROR;
    }

    int i = 0;
    args[i] = (char *)Allocate((strlen(token) + 1), sizeof(char));
    memmove(args[i], token, strlen(token) + 1);
    usedArgs++;
    i++;

    do
    {
        token = strtok(NULL, TOK_DELIM);

        if (token != NULL)
        {
            if (i >= argsBufferSize - 1)
            {
                argsBufferSize += MAX_NUM_OF_ARGS;
                args = (char **)realloc(args, (unsigned)argsBufferSize * sizeof(char *));

                if (args == NULL )
                {
                    return ERROR;
                }
            }

            args[i] = (char *)Allocate((strlen(token) + 1), sizeof(char));
            memmove(args[i], token, strlen(token) + 1);
            usedArgs++;
            i++;
        }

    } while (token != NULL);

    numOfArgs = i - 1;

    return SUCCESS;
}

ci_result_t ExecuteCommand(int commandIndex)
{
    if (commandIndex < 0 || commandIndex >= NUM_OF_COMMANDS)
    {
        return ERROR;
    }

    commands_list[commandIndex].fptr(args, numOfArgs);

    return SUCCESS;
}

void CommandInt_Init(void)
{
    argsBufferSize = MAX_NUM_OF_ARGS;
    args = (char **)Allocate((unsigned)argsBufferSize, sizeof(char *));
}

void CommandInt_Destroy(void)
{
    for (int i = 0; i < usedArgs; ++i)
    {
        free(args[i]);
    }

    free(args);
    numOfArgs = 0;
    usedArgs = 0;
}

char **CommandInt_GetArgs(void)
{
    return args;
}

ci_result_t CommandInt_Handle(char * inputLine)
{
    if(ParseIntoArgs(inputLine) == ERROR)
    {
        return ERROR;
    }

    int cIndex = CommandInt_IsValidCommand();

    if (cIndex < 0)
    {
        return ERROR;
    }

    return ExecuteCommand(cIndex);
}


