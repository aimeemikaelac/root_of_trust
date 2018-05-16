#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/aimee/root_of_trust/experiments/secure_filesystem/secure_filesystem_hls/solution1/.autopilot/db/a.g.bc ${1+"$@"}
