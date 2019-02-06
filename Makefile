# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kbaker <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/02/26 22:10:44 by kbaker            #+#    #+#              #
#    Updated: 2019/01/24 19:57:45 by kbaker           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS = -Wall -Wextra -Werror

NAME = libft.a

HEADER = libft.h

SRCS =  ft_lstnew.c	ft_putchar.c ft_strchr.c ft_strjoin.c ft_strnew.c ft_toupper.c \
		ft_atoi.c ft_memalloc.c ft_putchar_fd.c ft_strclr.c ft_strlcat.c ft_strnstr.c \
		ft_bzero.c ft_memccpy.c ft_putendl.c ft_strcmp.c ft_strlen.c ft_strnstr.c \
		ft_isalnum.c ft_memchr.c ft_putendl_fd.c ft_strcpy.c ft_strmap.c ft_strrchr.c \
		ft_isalpha.c ft_memcmp.c ft_putnbr.c ft_strdel.c ft_strmapi.c ft_strsplit.c \
		ft_isascii.c ft_memcpy.c ft_putnbr_fd.c ft_strdup.c ft_strncat.c ft_strstr.c \
		ft_isdigit.c ft_memdel.c ft_putstr.c ft_strequ.c ft_strncmp.c ft_strsub.c \
		ft_isprint.c ft_memmove.c ft_putstr_fd.c ft_striter.c ft_strncpy.c ft_strtrim.c \
		ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_islower.c \
		ft_isupper.c ft_swap.c ft_memset.c ft_strcat.c ft_striteri.c ft_strnequ.c ft_itoa.c 
		ft_tolower.c ft_itoa_base.c  ft_unsigned_putnbr.c ft_pow.c ft_atof.c ft_ftoa.c \

OBJS = ft_lstnew.o ft_putchar.o ft_strchr.o ft_strjoin.o ft_strnew.o ft_toupper.o \
       ft_atoi.o ft_memalloc.o ft_putchar_fd.o ft_strclr.o ft_strlcat.o ft_strnstr.o \
       ft_bzero.o ft_memccpy.o ft_putendl.o ft_strcmp.o ft_strlen.o ft_strnstr.o \
       ft_isalnum.o ft_memchr.o ft_putendl_fd.o ft_strcpy.o ft_strmap.o ft_strrchr.o \
       ft_isalpha.o ft_memcmp.o ft_putnbr.o ft_strdel.o ft_strmapi.o ft_strsplit.o \
       ft_isascii.o ft_memcpy.o ft_putnbr_fd.o ft_strdup.o ft_strncat.o ft_strstr.o \
       ft_isdigit.o ft_memdel.o ft_putstr.o ft_strequ.o ft_strncmp.o ft_strsub.o \
       ft_isprint.o ft_memmove.o ft_putstr_fd.o ft_striter.o ft_strncpy.o ft_strtrim.o \
       ft_lstdelone.o ft_lstdel.o ft_lstadd.o ft_lstiter.o ft_lstmap.o ft_islower.o \
       ft_isupper.o ft_swap.o ft_memset.o ft_strcat.o ft_striteri.o	ft_strnequ.o \ 
	   ft_itoa.o ft_tolower.o ft_itoa_base.o ft_unsigned_putnbr.o ft_pow.o ft_atof.o\
	   ft_ftoa.o\
all: $(NAME)

$(NAME):
	gcc -g $(FLAGS) -c $(SRCS) -I $(HEADER)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

clean:
	rm -rf $(OBJS)

fclean:	clean
	rm -rf $(NAME)

re:	fclean all
	gcc -g $(FLAGS) -c $(SRCS) -I $(HEADER)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

.PHONY: all, clean, fclean, re
