# Openning vim with the result which was searched by grep easily
# Ji-Hun Kim (jihuun.k@gamil.com)
# v0.0.1

#! /bin/bash

OPEN_FILE=$(echo $@ | awk -F':' '{print $1}')
LINE_NUM=$(echo $@ | awk -F':' '{print $2}')

vim $OPEN_FILE +$LINE_NUM
