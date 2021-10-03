# MINTIA address space

00000000-7FFFFFFF   2GB: userspace (or a second identity mapping of RAM in system process)

80000000-9FFFFFFF 512MB: system binaries (preferred, can have structures)

A0000000-AFFFFFFF 256MB: system structures (preferred, can have binaries)

BF000000-BFFFFFFF  16MB: dynamic pool

C0000000-FFFFFFFF   1GB: identity mapping of RAM