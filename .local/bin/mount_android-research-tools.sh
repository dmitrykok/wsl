#!/bin/bash -e
sshfs dmitryk@gnu-1118-dmitryk:/home/dmitryk/src/android-research-tools ~/src/android-research-tools -C -o reconnect -o dcache_max_size=100000 -o workaround=truncate:buflimit

