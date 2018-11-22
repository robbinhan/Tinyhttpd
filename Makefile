all: httpd client
LIBS = -lpthread #-lsocket
httpd: httpd.c
	clang httpd.c logger/log.c -o httpd

client: simpleclient.c
	gcc -W -Wall -o $@ $<
clean:
	rm httpd
