#!/bin/bash
PID=`ps a | awk '$5~/qemu-system-arm$/ {print $1}'`
kill $PID
