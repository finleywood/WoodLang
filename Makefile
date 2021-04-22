CC = gcc
CFLAGS = -c -std=c99 -g
LDFLAGS = -g

SRC_DIR = src
HDR_DIR = include
OBJ_DIR = obj
BIN_DIR = bin

SRC = $(wildcard ${SRC_DIR}/*.c)
HDR = $(wildcard ${HDR_DIR}/*.h)
OBJ = $(SRC:${SRC_DIR}/%.c=${OBJ_DIR}/%.o)
BIN = ${BIN_DIR}/woodlang

all: ${SRC} ${OBJ} ${BIN}

${BIN}: ${OBJ}
	${CC} ${LDFLAGS} $^ -o $@

${OBJ_DIR}/%.o: ${SRC_DIR}/%.c ${HDR}
	${CC} ${CFLAGS} $< -o $@

clean:
	rm ${OBJ_DIR}/*.o ${BIN}