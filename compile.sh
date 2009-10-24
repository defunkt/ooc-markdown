#!/bin/sh
ooc down.ooc -onlygen
gcc -std=c99 -Wall -Idiscount -I/Users/chris/Projects/ooc/libs/headers -Iooc_tmp ooc_tmp/down/down.c ooc_tmp/sdk/lang/BasicTypes.c ooc_tmp/sdk/lang/ooclib.c ooc_tmp/sdk/lang/stdio.c discount/Csio.c discount/docheader.c discount/dumptree.c discount/generate.c discount/markdown.c discount/mkdio.c discount/resource.c discount/toc.c discount/xml.c -o down -lpthread /Users/chris/Projects/ooc/libs/osx64/libgc.a
echo ok
