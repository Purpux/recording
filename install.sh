#!/bin/bash

doas cp $1 /usr/local/bin/$1
doas chown root:wheel /usr/local/bin/$1
doas chmod 650 /usr/local/bin/$1
