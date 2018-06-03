##
## EPITECH PROJECT, 2018
## PSU_2017_42sh
## File description:
## Makefile of the 42sh project
##

## ---- BINARIES NAMES ---- ##

BINARY_NAME	=	42sh

DEBUG_BINARY_NAME	=	42sh_debug

TEST_BINARY_NAME	=	42sh_test

## ---- FUNCTIONS ---- ##

CC	=	gcc

## ---- PATHS ---- ##

PATH_SRC	=	./src

PATH_TEST	=	./tests

## ---- SOURCE FILES ---- ##

SRCS	=	$(PATH_SRC)/check_args.c \
		$(PATH_SRC)/destroy_shell.c \
		$(PATH_SRC)/initialisation_shell/copy_environement.c \
		$(PATH_SRC)/initialisation_shell/initialisation_shell.c \
		$(PATH_SRC)/initialisation_shell/set_env_echec_mode.c \
		$(PATH_SRC)/initialisation_shell/initialisation_backup.c \
		$(PATH_SRC)/initialisation_shell/initialisation_paths.c \
		$(PATH_SRC)/initialisation_shell/initialisation_terminal.c \
		$(PATH_SRC)/initialisation_shell/initialisation_binding.c \
		$(PATH_SRC)/initialisation_shell/initialisation_local.c \
		$(PATH_SRC)/shell_loop/shell_loop.c \
		$(PATH_SRC)/shell_loop/write_command_history.c \
		$(PATH_SRC)/shell_loop/free_command.c \
		$(PATH_SRC)/shell_loop/update_backup.c \
		$(PATH_SRC)/shell_loop/free_array_string.c \
		$(PATH_SRC)/shell_loop/input/get_input.c \
		$(PATH_SRC)/shell_loop/input/get_chars_from_term.c \
		$(PATH_SRC)/shell_loop/input/regular_char.c \
		$(PATH_SRC)/shell_loop/input/cursor_moves.c \
		$(PATH_SRC)/shell_loop/input/check_match_direct.c \
		$(PATH_SRC)/shell_loop/input/history_binding.c \
		$(PATH_SRC)/shell_loop/input/get_completion_folder.c \
		$(PATH_SRC)/shell_loop/input/get_auto_completion.c \
		$(PATH_SRC)/shell_loop/input/modify_input_autocompletion.c \
		$(PATH_SRC)/shell_loop/transformation/apply_transformation.c \
		$(PATH_SRC)/shell_loop/transformation/history/history.c \
		$(PATH_SRC)/shell_loop/transformation/alias/get_alias.c \
		$(PATH_SRC)/shell_loop/transformation/alias/get_alias_from_file.c \
		$(PATH_SRC)/shell_loop/transformation/alias/get_size_alias_file.c \
		$(PATH_SRC)/shell_loop/prompt/display_bonus_prompt.c \
		$(PATH_SRC)/shell_loop/prompt/display_prompt.c \
		$(PATH_SRC)/shell_loop/parsing/get_command_line.c \
		$(PATH_SRC)/shell_loop/parsing/parsing/get_word.c \
		$(PATH_SRC)/shell_loop/parsing/parsing/my_str_to_words.c \
		$(PATH_SRC)/shell_loop/parsing/parsing/my_strcpy_words.c \
		$(PATH_SRC)/shell_loop/parsing/get_number_instruction.c \
		$(PATH_SRC)/shell_loop/parsing/get_pipe_number.c \
		$(PATH_SRC)/shell_loop/parsing/fill_up_instruction.c \
		$(PATH_SRC)/shell_loop/parsing/get_pipe.c \
		$(PATH_SRC)/shell_loop/parsing/get_redirect.c \
		$(PATH_SRC)/shell_loop/parsing/get_ampersand.c \
		$(PATH_SRC)/shell_loop/parsing/check_env_variable.c \
		$(PATH_SRC)/shell_loop/parsing/check_local_variable.c \
		$(PATH_SRC)/shell_loop/parsing/fix_extra_space.c \
		$(PATH_SRC)/shell_loop/parsing/check_quote.c \
		$(PATH_SRC)/shell_loop/parsing/get_condition.c \
		$(PATH_SRC)/shell_loop/parsing/find_option_env.c \
		$(PATH_SRC)/shell_loop/parsing/add_path_args.c \
		$(PATH_SRC)/shell_loop/parsing/get_glob_args.c \
		$(PATH_SRC)/shell_loop/parsing/glob_linked_list.c \
		$(PATH_SRC)/shell_loop/parsing/search_match_args.c \
		$(PATH_SRC)/shell_loop/execution/builtins/cd_built.c \
		$(PATH_SRC)/shell_loop/execution/builtins/env_built.c \
		$(PATH_SRC)/shell_loop/execution/builtins/echo_built.c \
		$(PATH_SRC)/shell_loop/execution/builtins/setenv_built.c \
		$(PATH_SRC)/shell_loop/execution/builtins/unsetenv_built.c \
		$(PATH_SRC)/shell_loop/execution/builtins/exit_built.c \
		$(PATH_SRC)/shell_loop/execution/builtins/exec_builtins.c \
		$(PATH_SRC)/shell_loop/execution/builtins/is_builtins.c \
		$(PATH_SRC)/shell_loop/execution/builtins/process/init.c \
		$(PATH_SRC)/shell_loop/execution/builtins/process/core.c \
		$(PATH_SRC)/shell_loop/execution/builtins/process/fg_built.c \
		$(PATH_SRC)/shell_loop/execution/builtins/process/change_action_of_signal.c \
		$(PATH_SRC)/shell_loop/execution/builtins/process/pid_signal.c \
		$(PATH_SRC)/shell_loop/execution/builtins/process/update.c \
		$(PATH_SRC)/shell_loop/execution/builtins/process/connection.c \
		$(PATH_SRC)/shell_loop/execution/builtins/process/jobs.c \
		$(PATH_SRC)/shell_loop/execution/builtins/process/shearch_process.c \
		$(PATH_SRC)/shell_loop/execution/builtins/cd_special_cases.c \
		$(PATH_SRC)/shell_loop/execution/builtins/put_new_old_pwd.c \
		$(PATH_SRC)/shell_loop/execution/builtins/error_wrong_folder.c \
		$(PATH_SRC)/shell_loop/execution/builtins/save_old_pwd.c \
		$(PATH_SRC)/shell_loop/execution/builtins/realloc_env.c \
		$(PATH_SRC)/shell_loop/execution/builtins/destroy_cd_resources.c \
		$(PATH_SRC)/shell_loop/execution/builtins/builtins_redirect_pipe.c \
		$(PATH_SRC)/shell_loop/execution/builtins/history_built.c \
		$(PATH_SRC)/shell_loop/execution/builtins/alias_built.c \
		$(PATH_SRC)/shell_loop/execution/builtins/update_alias.c \
		$(PATH_SRC)/shell_loop/execution/builtins/set_built.c \
		$(PATH_SRC)/shell_loop/execution/builtins/unset_built.c \
		$(PATH_SRC)/shell_loop/execution/get_redirected.c \
		$(PATH_SRC)/shell_loop/execution/multiple_execution.c \
		$(PATH_SRC)/shell_loop/execution/execute_command.c \
		$(PATH_SRC)/shell_loop/execution/create_pipe.c \
		$(PATH_SRC)/shell_loop/execution/exec_pipe.c \
		$(PATH_SRC)/shell_loop/execution/redirect_pipe.c \
		$(PATH_SRC)/shell_loop/execution/error_exec.c \
		$(PATH_SRC)/shell_loop/execution/dup_my_pipe.c \
		$(PATH_SRC)/shell_loop/execution/get_path_exec.c \
		$(PATH_SRC)/shell_loop/execution/get_execution_file_path.c \
		$(PATH_SRC)/shell_loop/execution/simple_execution.c \
		$(PATH_SRC)/shell_loop/execution/check_sig.c \
		$(PATH_SRC)/shell_loop/execution/display_error_instruction.c \
		$(PATH_SRC)/shell_loop/execution/redirect_stdin_double.c \
		$(PATH_SRC)/shell_loop/execution/condition_instruction.c \
		$(PATH_SRC)/scripting/check_script.c \
		$(PATH_SRC)/scripting/cond_operator/diff_cond_script.c \
		$(PATH_SRC)/scripting/cond_operator/equal_cond_script.c \
		$(PATH_SRC)/scripting/cond_operator/inf_cond_script.c \
		$(PATH_SRC)/scripting/cond_operator/inf_eq_cond_script.c \
		$(PATH_SRC)/scripting/cond_operator/sup_cond_script.c \
		$(PATH_SRC)/scripting/cond_operator/sup_eq_cond_script.c \
		$(PATH_SRC)/scripting/cond_operator/operator_script.c \
		$(PATH_SRC)/scripting/error_syntax_script.c \
		$(PATH_SRC)/scripting/condition/fill_condition_script.c \
		$(PATH_SRC)/scripting/condition/if_script.c \
		$(PATH_SRC)/scripting/condition/init_condition_script.c \
		$(PATH_SRC)/scripting/condition/keywords_script.c \
		$(PATH_SRC)/scripting/condition/redirect_cond_script.c \
		$(PATH_SRC)/scripting/get_valid_line_script.c \
		$(PATH_SRC)/scripting/get_value_from_var.c \
		$(PATH_SRC)/scripting/open_script.c \
		$(PATH_SRC)/scripting/run_script.c \

SRC_MAIN	=	$(PATH_SRC)/main.c

SRCS_TEST	=	$(PATH_TEST)/shell/check_args_test.c \
			$(PATH_TEST)/shell/copy_environement_test.c \
			$(PATH_TEST)/shell/destroy_shell_test.c \
			$(PATH_TEST)/shell/display_prompt_test.c \
			$(PATH_TEST)/shell/initialisation_backup_test.c \
			$(PATH_TEST)/shell/initialisation_shell_test.c \
			$(PATH_TEST)/shell/is_empty_line_test.c \
			$(PATH_TEST)/shell/set_env_echec_mode_test.c \
			$(PATH_TEST)/shell/init_terminal_test.c \
			$(PATH_TEST)/shell/get_input_test.c \
			$(PATH_TEST)/shell/modify_input_auto_test.c \
			$(PATH_TEST)/shell/get_alias_test.c \
			$(PATH_TEST)/shell/write_history_test.c \
			$(PATH_TEST)/parsing/analyse_redirect_test.c \
			$(PATH_TEST)/parsing/analyse_redirect_2_test.c \
			$(PATH_TEST)/parsing/check_env_variable_test.c \
			$(PATH_TEST)/parsing/get_command_line_1_test.c \
			$(PATH_TEST)/parsing/get_command_line_2_test.c \
			$(PATH_TEST)/parsing/get_number_instruction_test.c \
			$(PATH_TEST)/parsing/get_pipe_number_test.c \
			$(PATH_TEST)/parsing/get_pipe_test.c \
			$(PATH_TEST)/parsing/get_condition_test.c \
			$(PATH_TEST)/parsing/find_option_env_test.c \
			$(PATH_TEST)/parsing/glob_get_args_test.c \
			$(PATH_TEST)/parsing/glob_symbols_test.c \
			$(PATH_TEST)/parsing/glob_linked_list_test.c \
			$(PATH_TEST)/lib/my/get_next_line_test.c \
			$(PATH_TEST)/lib/my/my_putstr_test.c \
			$(PATH_TEST)/lib/my/my_strcmp_test.c \
			$(PATH_TEST)/lib/my/my_strlen_test.c \
			$(PATH_TEST)/execution/set_built_test.c \
			$(PATH_TEST)/execution/cd_builtin_test.c \
			$(PATH_TEST)/execution/cd_builtin_crash_test.c \
			$(PATH_TEST)/execution/echo_builtin_test.c \
			$(PATH_TEST)/execution/execute_command_test.c \
			$(PATH_TEST)/execution/execute_command2_test.c \
			$(PATH_TEST)/execution/is_builtin_test.c \
			$(PATH_TEST)/execution/unsetenv_built_test.c \
			$(PATH_TEST)/execution/setenv_builtin_test.c \
			$(PATH_TEST)/execution/setenv_crash_test.c \
			$(PATH_TEST)/execution/history_builtin_test.c \
			$(PATH_TEST)/execution/display_error_execution_test.c \
			$(PATH_TEST)/execution/exit_built_test.c \
			$(PATH_TEST)/execution/env_built_test.c \
			$(PATH_TEST)/execution/roll_back_path_test.c \
			$(PATH_TEST)/execution/alias_built_test.c \
			$(PATH_TEST)/scripting/script_name_test.c \
			$(PATH_TEST)/scripting/script_access_test.c \
			$(PATH_TEST)/scripting/script_shebang_test.c \
			$(PATH_TEST)/scripting/script_fill_cond_test.c \
			$(PATH_TEST)/scripting/script_if_keyword_test.c \
			$(PATH_TEST)/scripting/script_no_keyword_test.c \
			$(PATH_TEST)/scripting/script_other_keyword_test.c \

## ---- FLAGS ---- ##

LIB	=	-L./lib/ -lmy -lncurses

TEST_FLAGS	=	-lcriterion --coverage

DEBUG_FLAG	=	-g3

HEADER	=	-I./include/

CFLAGS	=	-W -Wall -Wextra $(WRNIGN) $(HEADER)

WRNIGN	=	-Wno-pedantic -Wno-unused-variable -Wno-unused -Wno-parentheses

## ---- OBJS ---- ##

OBJS	=	$(SRCS:.c=.o) $(SRC_MAIN:.c=.o)

## ---- MAIN RULE ---- ##

all: $(BINARY_NAME)

$(BINARY_NAME): $(OBJS)
	make -C./lib/
	$(CC) -o $(BINARY_NAME) $(HEADER) $(OBJS) $(LIB)

compile:
	gcc $(HEADER) $(CDFLAG) -std=gnu17 $(SRCS) $(SRC_MAIN) ./lib/my/*.c -o $(BINARY_NAME) -lncurses

## -- TESTING RULES -- ##

tests_auto:
	cp bonus/42sh_tester .
	./42sh_tester -j1 --always-succeed

tests_compile:
	gcc $(HEADER) $(CDFLAG) -std=gnu99 $(SRCS) $(SRCS_TEST) ./lib/my/*.c -o $(TEST_BINARY_NAME) -lncurses $(TEST_FLAGS)

tests_run:
	make -C./lib/
	$(CC) $(SRCS) $(SRCS_TEST) -o $(TEST_BINARY_NAME) $(HEADER) $(TEST_FLAGS) $(LIB)
	./$(TEST_BINARY_NAME) --always-succeed -j1

tests_full:
	make -C./lib/
	$(CC) $(SRCS) $(SRCS_TEST) -o $(TEST_BINARY_NAME) $(HEADER) $(TEST_FLAGS) $(LIB)
	./$(TEST_BINARY_NAME) --always-succeed -j1 2> unit_report.txt
	cp bonus/42sh_tester .
	./42sh_tester > /dev/null
	clear
	cat unit_report.txt test_report_log.txt

show_coverage:
	make -C./lib/
	$(CC) $(SRCS) $(SRCS_TEST) -o $(TEST_BINARY_NAME) $(HEADER) $(TEST_FLAGS) $(LIB)
	./$(TEST_BINARY_NAME) --always-succeed -j1
	lcov --directory ./ -c -o rapport.info
	genhtml -o ./report -t "code coverage report" rapport.info
	xdg-open ./report/index.html &>/dev/null

## -- SMART TOOLS RULES -- ##

debug:
	make -C./lib/
	$(CC) $(SRCS) $(SRC_MAIN) -o $(DEBUG_BINARY_NAME) $(HEADER) $(LIB) $(DEBUG_FLAG)
	gdb -w $(DEBUG_BINARY_NAME)

valgrind:
	make -C./lib/
	$(CC) $(SRCS) $(SRC_MAIN) -o $(DEBUG_BINARY_NAME) $(HEADER) $(LIB) $(DEBUG_FLAG)
	valgrind --leak-check=full ./$(DEBUG_BINARY_NAME)

wc:
	wc $(SRCS) $(SRC_MAIN) $(SRCS_TEST) include/*

## -- CLEANING RULES -- ##

clean:
	make clean -C./lib/
	rm -f $(OBJS) *.gc* a u y b i z buf buf2 *.txt alias_test* 42sh_tester -Rf report rapport.info .alias* .binding* .history*
	rm -f ./include/*.gch

fclean: clean
	make fclean -C./lib/
	rm -f $(BINARY_NAME) $(DEBUG_BINARY_NAME) $(TEST_BINARY_NAME)

full_clean: fclean
	rm -f .history* .tags*

re: fclean all
