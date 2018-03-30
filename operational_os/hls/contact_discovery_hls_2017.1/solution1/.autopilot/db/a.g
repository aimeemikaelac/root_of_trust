#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/aimee/root_of_trust/operational_os/hls/contact_discovery_hls_2017.1/solution1/.autopilot/db/a.g.bc ${1+"$@"}
