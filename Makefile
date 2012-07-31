SRC = capture.c \
		led_driver.cpp
OBJ = capture.o \
		led_driver.o

CFLAGS += -g -O2

.c.o:
	@echo CC $<
	@${CC} -c ${CFLAGS} -o $*.o $<

.cpp.o:
	@echo CXX $<
	@${CXX} -c ${CFLAGS} -o $*.o $<

capture: ${OBJ}
	@echo CXX $<
	@${CXX} -o $@ ${OBJ}

clean:
	rm -f capture *.o
