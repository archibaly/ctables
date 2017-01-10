EXE = ctables
CFLAGS = -Wall

$(EXE): main.o ctables.o
	$(CC) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f tags *.o $(EXE)
