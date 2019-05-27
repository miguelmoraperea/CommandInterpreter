/*****************************************************************************
* Module name: CommandInterpreter.h
*
* First written on 2019/05/13 by Miguel Mora Perea.
*
* Module Description:
* This is the interface for Command Interpreter which contains functions that
* parse an input line into arguments and executes the command if is found
* in a list of predefined commands.
*
*****************************************************************************/
#ifndef COMMANDINTERPRETER_H_
#define COMMANDINTERPRETER_H_

typedef enum {
	ERROR = -1, SUCCESS = 1
} ci_result_t;

ci_result_t CommandInt_init(void);
char ** CommandInt_getArgs(void);
ci_result_t CommandInt_handle(char * inputLine);

#endif /* COMMANDINTERPRETER_H_ */
