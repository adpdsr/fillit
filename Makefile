# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adu-pelo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/07 15:00:48 by adu-pelo          #+#    #+#              #
#    Updated: 2016/11/07 15:02:13 by adu-pelo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= fillit

LIBFT	= ./libft/libft.a

SRCS	= fillit.c\
		ft_get_file.c\
		ft_check_file.c\
		ft_count_tetri.c\
		ft_error.c\
		ft_create_map.c\
		ft_resolve.c\
		ft_resolve_tools.c\
		ft_split_tetri.c\

OBJS	= $(SRCS:.c=.o)

RM		= rm -rf

all: $(NAME)

$(NAME): $(OBJS)
	gcc -o $(NAME) $(SRCS) $(LIBFT) -I.

%.o: %.c
	gcc -Wall -Werror -Wextra -c $^

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
