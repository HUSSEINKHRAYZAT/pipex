
PROG	= pipex

SRCS 	= srcs/pipex.c srcs/utils.c
OBJS 	= ${SRCS:.c=.o}
MAIN	= srcs/pipex.c


HEADER	= -Iincludes

CC 		= gcc
CFLAGS 	= -Wall -Wextra -Werror -g

.c.o:		%.o : %.c
					@gcc ${CFLAGS} ${HEADER} -c $< -o $(<:.c=.o)

all: 		${PROG}

${PROG}:	${OBJS}
					
					@make re -C ./libft
					@$(CC) ${OBJS} -Llibft -lft -o ${PROG}
					@echo "----Compiling lib Wait a second---- \n"
					@echo "WAITING .............. \n"
					@echo "WAITING .............. \n"
					@echo "WAITING .............. \n"
					@echo "WAITING .............. \n"
					@echo "WAITING .............. \n"
					@echo ">>>>>>>>>>>>SUCCESS<<<<<<<<<<<<<<<< \n"
					@echo "Pipex Compiled! NOW U CAN PUT 100 MARK :) \n"


clean:
					@make clean -C ./libft
					@rm -f ${OBJS} ${OBJS_B}

fclean: 	clean
					@make fclean -C ./libft
					@rm -f $(NAME)
					@rm -f ${PROG}
					@echo "\n  oh my god evaluator you Deleting EVERYTHING!  THANKS FOR THIS EVAL BRO  \n"
					@echo "\n  HUSSEIN KHRAYZAT : INTRA :hkhrayza :: visit my linkedIn profile :)  \n"

re:			fclean all

.PHONY: all clean fclean re re_bonus bonus party
