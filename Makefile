# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kbaker <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/02/26 22:10:44 by kbaker            #+#    #+#              #
#    Updated: 2019/02/05 20:27:43 by kbaker           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CFLAGS = -Wall -Wextra -Werror -c -I

NAME = libft.a

SRCS =  ft_lstnew.c	ft_putchar.c ft_strchr.c ft_strjoin.c ft_strnew.c ft_toupper.c \
		ft_atoi.c ft_memalloc.c ft_putchar_fd.c ft_strclr.c ft_strlcat.c ft_strnstr.c \
		ft_bzero.c ft_memccpy.c ft_putendl.c ft_strcmp.c ft_strlen.c ft_strnstr.c \
		ft_isalnum.c ft_memchr.c ft_putendl_fd.c ft_strcpy.c ft_strmap.c ft_strrchr.c \
		ft_isalpha.c ft_memcmp.c ft_putnbr.c ft_strdel.c ft_strmapi.c ft_strsplit.c \
		ft_isascii.c ft_memcpy.c ft_putnbr_fd.c ft_strdup.c ft_strncat.c ft_strstr.c \
		ft_isdigit.c ft_memdel.c ft_putstr.c ft_strequ.c ft_strncmp.c ft_strsub.c \
		ft_isprint.c ft_memmove.c ft_putstr_fd.c ft_striter.c ft_strncpy.c ft_strtrim.c \
		ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_islower.c \
		ft_isupper.c ft_swap.c ft_memset.c ft_strcat.c ft_striteri.c ft_strnequ.c ft_itoa.c \
		ft_tolower.c ft_itoa_base.c  ft_unsigned_putnbr.c ft_pow.c \

OBJS = $(SRCS:.c=.o) 

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean:	clean
	rm -rf $(NAME)

re:	fclean all
