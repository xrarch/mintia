# Note on accessing bootloader structures from the kernel

Structures passed from the bootloader may not be available from all address spaces. Therefore, one should only access them from within the kernel process, i.e., from any system thread. Accessing them from a user process address space may have unpredictable results.