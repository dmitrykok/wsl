#!/bin/bash -e
sshfs dmitryk@gnu-1118-dmitryk:/home/dmitryk/src/android-research ~/src/android-research -C -o reconnect -o dcache_max_size=100000 -o workaround=truncate:buflimit

