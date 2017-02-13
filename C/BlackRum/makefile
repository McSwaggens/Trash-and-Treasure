OS := $(shell uname -s)
IS_APPLE := $(shell echo $(OS)|grep -i darwin)

ifdef IS_APPLE
black_rum : main.o black_rum.o
	cc -o output/black_rum_bin main.o black_rum.o -lm
else
black_rum : main.o black_rum.o
	cc -o output/black_rum_bin main.o my_basic.o -lm -lrt
endif

main.o : shell/main.c core/black_rum.h
	cc -Os -c shell/main.c -Wno-unused-result

black_rum.o : core/black_rum.c core/black_rum.h
	cc -Os -c core/black_rum.c -Wno-multichar -Wno-overflow -Wno-unused-result

clean :
	rm -f main.o black_rum.o output/black_rum_bin output/black_rum_bin.exe
