#!/bin/sh
gcc chatpop.c -o chatpop.so \
  -fPIC -shared `pkg-config pidgin --cflags --libs glib-2.0` \
  -Wall -Werror-implicit-function-declaration \
  && sudo cp chatpop.so /usr/lib/purple-2/
