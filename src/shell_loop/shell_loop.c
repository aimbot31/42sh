/*
** EPITECH PROJECT, 2018
** PSU_42sh_2017
** File description:
** File of the shell_loop function : get input, parse and execute.
*/

#include <stdlib.h>
#include "shell.h"
#include "mylib.h"
#include "execution.h"
#include "input.h"

bool is_empty_input(char *user_input)
{
	for (int i = 0; user_input[i]; i++) {
		if (SPACE_TAB(user_input[i]) == 0)
			return (true);
	}
	return (false);
}

unsigned int redirect_loop(shell_t *shell, char *input, char *copy_input)
{
	if (is_empty_input(input) == true && copy_input != NULL) {
		input = apply_transformation(shell->bonus, input,
			shell->paths);
		shell->command_line = get_command_line(shell->bonus,
			input, shell->env, shell->local);
		if (shell->command_line == NULL)
			return (FAILURE);
		shell->code = execute_command(shell, shell->command_line);
		write_command_history(copy_input, shell->paths);
		free_command(shell->command_line);
		update_backup(shell);
		free(input);
		free(copy_input);
	}
	return (SUCCESS);
}

unsigned int shell_loop(shell_t *shell)
{
	char *input = NULL;

	while (shell->state == OK && display_prompt(shell) &&
		(input = get_input(shell, 1, 0)) != NULL) {
		if (redirect_loop(shell, input, strdup(input)) == FAILURE)
			return (FAILURE);
	}
	return (SUCCESS);
}
