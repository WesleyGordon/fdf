# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wvon-gra <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/12 14:55:06 by wvon-gra          #+#    #+#              #
#    Updated: 2017/09/13 10:56:12 by wvon-gra         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fdf

SRC = fdf.c draw_line.c prep.c

LIB = libft/libft.a

FLAG = -lmlx -framework opengl -framework appkit

ERROR = -Werror -Wall -Wextra

all:
	@make -C ./libft
	@gcc -o $(NAME) $(SRC) $(FLAG) $(ERROR) $(LIB)
	@echo "Fdf Compiled"

clean:
	$(MAKE) -C ./libft clean
	@rm -f $(NAME)

fclean: clean
	$(MAKE) -C ./libft fclean
	@rm -f $(LIB)

re: fclean lib all

lib:
	@echo "Re-compiling libft"
	$(MAKE) -C ./libft all
