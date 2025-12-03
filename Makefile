NAME=libft_cpp.a
CPP=c++
CFLAGS=-std=++98 -Wall -Wextra -Werror
INCS=-Iincludes
SRCS=\
	$(SRC_DIR)/print_msg.cpp

SRC_DIR=src
OBJS=$(SRCS:%.c=%.o)
%.o:
	$(CPP) $(CFLAGS) $(INCS) -c $< -o $@

all: $(NAME)
clean: 
	rm -f $(OBJS)
fclean: clean
	rm -f $(NAME)
re: fclean all
.PHONY: all clean fclean re
