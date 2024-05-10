#!/bin/bash

grep -Po '/dev/\w+' fdisk-l.log

exit 0

