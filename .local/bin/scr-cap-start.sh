#!/bin/bash -e
nc localhost 9999 | ffplay -framerate 60 -probesize 32 -sync video -

