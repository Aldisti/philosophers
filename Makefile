# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adi-stef <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/04 14:32:43 by adi-stef          #+#    #+#              #
#    Updated: 2023/03/07 14:02:19 by adi-stef         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
ccyan="\033[1;36m"
cgreen=$("\033[1;32m")
cred="\033[1;31m"
cend=$("\033[0m")

NAME	= philo

SRCS	= philo.c help.c utils.c itoa.c
OBJS	= $(SRCS:%.c=%.o)

CC		= gcc
CFLAGS	= -Wall -Wextra -Werror
RM		= rm -f

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)
	@echo "\033[1;32m➜\033[0m \033[1;32m Project compiled\033[0m"

all: $(NAME)

clean:
	$(RM) $(OBJS)
	@echo "\033[1;32m➜\033[0m \033[1;31m Object files deleted\033[0m"

fclean: clean
	$(RM) $(NAME)
	@echo "\033[1;32m➜\033[0m \033[1;31m Project cleaned\033[0m"

clear:
	clear

re: clear fclean all
	@echo "\033[1;32m➜\033[0m \033[1;36m Project cleaned and recompiled\033[0m"

.PHONY: all clean fclean re
