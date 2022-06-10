# MINTIA

MINTIA is an overengineered operating system written in a custom programming
language. Its overall design pays homage to the Windows NT operating system,
especially its object manager and virtual memory manager, though it is
definitely simplified (one person can only do so much).

It aims to be something that might have come off of a weird workstation
computer made by a doomed company in 1989, and that might have been considered
a pretty strong system at the time. It also tries to be portable to other
32-bit architectures, with vague plans for a period-accurate MIPS or i386 port
in the future.

![Running](https://raw.githubusercontent.com/limnarch/mintia/main/screenshot.png)

## Building

As with all LIMNstation projects, the [sdk](http://github.com/limnarch/sdk) should be in a directory `../sdk` relative to this repository.

Running `make` in this repository should then place an MINTIA distribution image at `build/mintia-dist.img`. Windows users should use WSL as Cygwin seems to have problems with the SDK.

## Testing

With the LIMNstation emulator (`./limnemu/`) and MINTIA repository (`./mintia/`) in your current directory, run this command:

`./limnemu/graphical.sh -dks ./mintia/build/mintia-dist.img`

If it doesn't boot automatically, type this command at the firmware prompt:

`boot /disks/0/a`

MINTIA should boot to the `username:` prompt.

Logging in as `guest` works with any password, and the default password for `root` is `mintia`.


## Implemented features

1. Dynamically-linked kernel modules.
2. Priority-based preemptive multitasking with wait boosting.
3. Nested interrupts.
4. IPLs (analogous to Windows IRQLs) and DPCs.
5. Waiting on multiple events at once.
6. An Object Manager for centralized resource tracking and IPC.
7. Unix-like permissions model.
8. Loadable kernel-mode debugger with stack tracing.
9. File page cache.
10. AisixFS support.
11. Demand paging, memory-mapped files, etc.
12. Userspace dynamic linking.
13. Up to 16 dynamically-growable swapfiles and working set management.
14. Minimal command-line interface over TTY.

## Planned features (in rough descending order of priority)

1. Useful command-line interface. (in progress)
2. MBR partition table support; FAT32 driver
3. Mac OS 9-lookalike window system.
4. Self-hosting with a fully native toolchain.
5. Networking.