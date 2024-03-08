CC = gcc
CFLAGS = -O1 -g -Wall


OBJS := quicksort.o

all: clean main

main: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^ -lm

%.o: %.c
	$(CC) -o $@ $(CFLAGS) -c -MMD -MF .$@.d $<

clean:
	rm -f $(OBJS)
	rm -f *.dSYM
	rm -f main
	rm -f .*.o.d