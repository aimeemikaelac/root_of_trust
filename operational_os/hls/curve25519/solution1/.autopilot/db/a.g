#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/curve25519/solution1/.autopilot/db/a.g.bc ${1+"$@"}
