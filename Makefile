.PHONY: all

all: main latency throughput

%: %.c tsn.c
	gcc -Wall -g -O0 -o $@ $^

throughput: throughput.c tsn.c
	gcc -Wall -g -O0 -o $@ $^ -lpthread
