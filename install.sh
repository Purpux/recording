#!/bin/bash

cp $1 /usr/local/bin/$1
chown root:wheel /usr/local/bin/$1
chmod 650 /usr/local/bin/$1
