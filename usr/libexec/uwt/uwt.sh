#!/bin/sh

## Copyright (C) 2012 - 2025 ENCRYPTED SUPPORT LLC <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

#### meta start
#### project Whonix
#### category networking
#### description

## Disable torsocks warning spam such as.
## [May 20 11:45:27] WARNING torsocks[2645]: [syscall] Unsupported syscall number 224. Denying the call (in tsocks_syscall() at syscall.c:165)
## https://phabricator.whonix.org/T317
export TORSOCKS_LOG_LEVEL=1

#### meta end
