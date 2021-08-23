# Andromeda address space

00000000-7FFFFFFF: userspace (or a second identity mapping of RAM in system process)

80000000-BFFFFFFF: system binaries (preferred, can have structures)

C0000000-CFFFFFFF: system structures (preferred, can have binaries)

D0000000-FFFFFFFF: identity mapping of RAM (up to 768MB)