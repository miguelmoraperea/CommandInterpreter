/*****************************************************************************
* Module name: CommandsList.h
*
* First written on May 16, 2019 by Miguel.
*
* Module Description:
* This module contains the interface of the mock commands.
*
*****************************************************************************/

#ifndef COMMANDSLIST_H_
#define COMMANDSLIST_H_

typedef struct {
	char * name;
	void (*fptr)(char ** args);
} command_t;

#define NUM_OF_COMMANDS 2

extern command_t commands_list[];

void help(char ** args);
void version(char ** args);

#endif /* COMMANDSLIST_H_ */
