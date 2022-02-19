# MINTIA address space

00000000-7FFFFFFF   2GB: userspace

80000000-9FFFFFFF 512MB: system binaries (preferred, can have structures)

A0000000-AFFFFFFF 256MB: system structures (preferred, can have binaries)

B8000000-B9FFFFFF  32MB: dynamic pool

C0000000-FFFFFFFF   1GB: identity mapping of RAM