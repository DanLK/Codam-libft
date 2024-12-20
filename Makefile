# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dloustal <dloustal@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/29 14:01:02 by dloustal          #+#    #+#              #
#    Updated: 2024/11/12 13:49:03 by dloustal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SOURCES = ft_atoi.c \
			ft_bzero.c \
			ft_calloc.c \
			ft_isalnum.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isdigit.c \
			ft_isprint.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_memcpy.c \
			ft_memset.c \
			ft_memmove.c \
			ft_strchr.c \
			ft_strdup.c \
			ft_strlcat.c \
			ft_strlcpy.c \
			ft_strlen.c \
			ft_strncmp.c \
			ft_strnstr.c \
			ft_strrchr.c \
			ft_substr.c \
			ft_tolower.c \
			ft_toupper.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_atoi.c \
			ft_itoa.c \
			ft_split.c \
			ft_strmapi.c \
			ft_striteri.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c
BONUSSOURCES = ft_lstnew.c \
			ft_lstadd_front.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c \
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c \
			ft_lstmap.c
OBJFILES = $(SOURCES:.c=.o)
BONUSFILES = $(BONUSSOURCES:.c=.o)
CFLAGS += -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJFILES)
	ar rcs $(NAME) $(OBJFILES)

bonus: $(NAME) $(BONUSFILES)
	ar rcs $(NAME) $(BONUSFILES)

%.o: %.c 
	$(CC) -c $(CFLAGS) -o $@ $<

clean: 
	rm -f $(OBJFILES) $(BONUSFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re