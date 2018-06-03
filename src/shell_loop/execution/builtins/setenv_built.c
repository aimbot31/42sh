/*
** EPITECH PROJECT, 2018
** PSU_42sh_2017
** File description:
** Set the environement with the new value / varibale
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "shell.h"
#include "execution.h"
#include "instruction.h"
#include "mylib.h"

static char **update_env_variable(char **env, int pos, char *str)
{
	int i = 0;
	int j = 0;
	char *buffer = NULL;

	env[pos] ? buffer = my_getenv_root(env[pos]) : 0;
	env[pos] == NULL ? env[pos] = strdup(str) : free(env[pos]);
	env[pos] = malloc(sizeof(char) * (strlen(buffer) + strlen(str) + 1));
	for (i = 0; buffer[i]; i++)
		env[pos][i] = buffer[i];
	while (str[j]) {
		env[pos][i] = str[j];
		j++;
		i++;
	}
	env[pos][i] = '\0';
	free(buffer);
	return (env);
}

static char **add_env_variable(char **env, char **args, int pos)
{
	int j = 0;
	int i = 0;

	env = realloc_env(env, pos, sizeof(char) * (my_strlen(args[1]) +
			my_strlen(args[2]) + 10));
	while (args[1][i]) {
		env[pos][j] = args[1][i];
		i++;
		j++;
	}
	env[pos][j++] = '=';
	i = 0;
	while (args[2] != NULL && args[2][i]) {
		env[pos][j] = args[2][i];
		i++;
		j++;
	}
	env[pos][j] = '\0';
	env[pos + 1] = NULL;
	return (env);
}

static int check_setenv_variable(shell_t *shell, char *arg, int fd)
{
	char str[] = "setenv: Variable name must contain alphanumeric"\
		" characters.\n";

	for (int i = 0; arg[i]; i++) {
		if (ALPHANUM(arg[i]) == 0) {
			write(fd, str, strlen(str));
			shell->code = 1;
			return (-1);
		}
	}
	return (0);
}

int setenv_built(shell_t *shell, pipe_t *pipe)
{
	int pos = 0;

	if (pipe->args[1] == NULL)
		return (env_built(shell, pipe));
	if (check_setenv_variable(shell, pipe->args[1], pipe->fd) == -1)
		return (0);
	pos = get_line_env(shell->env, pipe->args[1]);
	if (pipe->args[2] == NULL)
		shell->env = add_env_variable(shell->env, pipe->args, pos);
	else if (my_get_env(shell->env, pipe->args[1]) == NULL)
		shell->env = add_env_variable(shell->env, pipe->args, pos);
	else
		update_env_variable(shell->env, pos, pipe->args[2]);
	return (0);
}
