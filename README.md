# MINTIA

MINTIA is an overengineered operating system written in a custom programming
language for a fictional workstation computer. Its overall design pays homage
to the Windows NT and VMS operating systems, especially its object manager and
virtual memory manager, with the capability to swap to disk not only user pages
but also kernel stacks, page tables, and even its own kernel code and heap.

It aims to be something that might have come off of a weird workstation
computer made by a doomed company in 1989, and that might have been considered
a pretty strong system at the time. It also tries to be portable to other
32-bit architectures, with plans for an m68k and SPARC port some day.

![Running](https://raw.githubusercontent.com/limnarch/mintia/main/screenshot.png)

## Building

As with all LIMNstation projects, the [sdk](http://github.com/limnarch/sdk) should be in a directory `../sdk` relative to this repository.

Running `make` in this repository should then place an MINTIA distribution image at `build/mintia-LIMNstation-fre.img`. Windows users should use WSL as Cygwin seems to have problems with the SDK.

## Testing

With the LIMNstation emulator (`./limnemu/`) and MINTIA repository (`./mintia/`) in your current directory, run this command:

`./limnemu/graphical.sh -dks ./mintia/build/mintia-LIMNstation-fre.img`

If it doesn't boot automatically, type this command at the firmware prompt:

`boot /disks/0/a`

MINTIA should boot to the `username:` prompt.

Logging in as `guest` works with any password, and the default password for `root` is `mintia`.

## Features

- [x] Dynamically-linked kernel modules.
- [x] Priority-based preemptive multitasking with wait boosting.
- [x] Nested interrupts, managed by IPLs (analogous to Windows IRQLs) and DPCs.
- [x] Waiting on multiple events at once.
- [x] An Object Manager for centralized resource tracking and IPC.
- [x] Unix-like permissions model.
- [x] Loadable kernel-mode debugger with stack tracing.
- [x] File page cache.
- [x] AisixFS support.
- [x] Demand paging, memory-mapped files, etc.
- [x] Userspace dynamic linking.
- [x] Up to 16 dynamically-growable swapfiles and working set management.
- [x] Minimal command-line interface over TTY.
- [x] Support for native and MBR partition table formats.
- [x] Swappable kernel sections and heap.

- [ ] FAT12/16/32 driver.
- [ ] Mac OS 9-lookalike window system.
- [ ] Self-hosting with a fully native toolchain.
- [ ] Networking.