SRCS = MainThreadRunner.c SDL_naclevents.c SDL_naclvideo.c
OBJS = $(patsubst %.c, %.o, $(SRCS))

.PHONY:all
all:$(OBJS)

CC = /usr/bin/gcc
CFLAGS = -I../../../include -I/home/bxl/ppapi-new/ -I. -c

$(OBJS):%.o:%.c
	  $(CC) $(CFLAGS) $< -o $@
.PHONY:clean
clean:
	rm *.o
