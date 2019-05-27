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

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "CommandInterpreter.h"
#include "Mocks_Commands.h"

#define TOK_DELIM 			" \t\r\n\a"

#define MAX_NUM_OF_ARGS		4

static char **args;
static int command_index;

static void freeArgs(void)
{
	free(args);
}

static ci_result_t parseIntoArgs(char * inputLine)
{
	freeArgs();

	int argsBufferSize = MAX_NUM_OF_ARGS;
	args = (char **)malloc((unsigned)argsBufferSize * sizeof(char *));

	char *token = strtok(inputLine, TOK_DELIM);

	if (token == NULL )
	{
		return ERROR;
	}

	int i = 0;
	args[i] = (char *)malloc((strlen(token) + 1) * sizeof(char));
	memmove(args[i], token, strlen(token) + 1);
	i++;

	do
	{
		token = strtok(NULL, TOK_DELIM);

		if (token != NULL)
		{
			if (i >= argsBufferSize)
			{
				argsBufferSize += MAX_NUM_OF_ARGS;
				args = (char **)realloc(args, (unsigned)argsBufferSize *
															sizeof(char *));
			}

			args[i] = (char *)malloc((strlen(token) + 1) * sizeof(char));
			memmove(args[i], token, strlen(token) + 1);
			i++;
		}

	} while (token != NULL);

	return SUCCESS;
}

static ci_result_t compareArrays(char * aArray, char * bArray)
{
	int i;

	for (i = 0; aArray[i] != '\0' && bArray[i] != '\0'; i++)
	{
		if (aArray[i] != bArray[i])
		{
			return ERROR;
		}
	}

	if (aArray[i] != bArray[i])
	{
		return ERROR;
	}

	return SUCCESS;
}

ci_result_t CommandInt_init(void)
{
	freeArgs();

	args = (char **)malloc((unsigned)MAX_NUM_OF_ARGS * sizeof(char *));

	if (args == NULL)
	{
		return ERROR;
	}

	for (int i = 0; i < MAX_NUM_OF_ARGS; i++)
	{
		args[i] = NULL;
	}

	return SUCCESS;
}

char ** CommandInt_getArgs(void)
{
	return args;
}

static ci_result_t CommandInt_IsValidCommand(void)
{
	for (int i = 0; i < NUM_OF_COMMANDS; i++)
	{
		if (compareArrays(args[0], commands_list[i].name) == SUCCESS)
		{
			command_index = i;
			return SUCCESS;
		}
	}

	return ERROR;
}

ci_result_t executeCommand(void)
{

	if (command_index < 0 || command_index >= NUM_OF_COMMANDS)
	{
		return ERROR;
	}

	commands_list[command_index].fptr(args);

	return SUCCESS;
}

ci_result_t CommandInt_handle(char * inputLine)
{
	if(parseIntoArgs(inputLine) == ERROR)
	{
		return ERROR;
	}

	if (CommandInt_IsValidCommand() == ERROR)
	{
		return ERROR;
	}

	return executeCommand();
}

