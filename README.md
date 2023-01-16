# MINTIA

MINTIA is an overengineered operating system written in a custom programming
language as part of a long-running project to develop a retro RISC workstation
computer called [XR/station](https://github.com/xrarch/xremu). Its overall
design pays homage to the Windows NT and VMS operating systems, especially its
object manager and virtual memory manager, with the capability to swap to disk
not only user pages but also kernel stacks, page tables, and even its own kernel
code and heap.

It aims to be something that might have come off of a weird workstation
computer made by a doomed company in 1989, and that might have been considered
a pretty strong system at the time. It also tries to be portable to other
32-bit architectures, with a finished port to the [fox32](https://github.com/fox32-arch/fox32)
CISC fantasy computer and planned future ports to other architectures as well.

![Running](https://raw.githubusercontent.com/xrarch/mintia/main/screenshot.png)

## Supported Architectures

<a href="https://github.com/xrarch/xremu"><img src="https://raw.githubusercontent.com/xrarch/mintia/main/badge-17032.png" width="256"></a>
<a href="https://github.com/fox32-arch/fox32"><img src="https://raw.githubusercontent.com/xrarch/mintia/main/badge-fox32.png" width="256"></a>

## Building

As with all XR/station projects, the [sdk](http://github.com/xrarch/sdk) should be in a directory `../sdk` relative to this repository.

Running `make` in this repository should then place an MINTIA distribution image at `build/mintia-XRstation-fre.img`. Windows users should use WSL as Cygwin seems to have problems with the SDK.

## Testing

With the XR/station emulator (`./xremu/`) and MINTIA repository (`./mintia/`) in your current directory, run this command:

`./xremu/graphical.sh -dks ./mintia/build/mintia-XRstation-fre.img`

If it doesn't boot automatically, type this command at the firmware prompt:

`boot /disks/0/a`

MINTIA should boot to the `username:` prompt.

Logging in as `guest` has no password, and the default password for `root` is `mintia`.

## Features

### Kernel

- [x] Targets a 2MB RAM minimum for headless use, 4MB for graphical.
- [x] Dynamically-linked kernel.
- [x] Priority-based preemptive multitasking with wait boosting.
- [x] Waiting on multiple objects simultaneously.
- [x] Nested interrupts, managed by IPLs (analogous to Windows IRQLs); DPCs and APCs.
- [x] Kernel-mode debugger with stack tracing.
- [x] Swappable kernel code and heap.
- [x] Layered design model.

### Executive

- [x] An object manager for centralized resource tracking.
- [x] Port-based IPC.
- [x] Unix-like permissions model.
- [x] Sophisticated memory manager.
- [x] Support for native and MBR partition table formats.
- [x] Fully asynchronous I/O API.
- [x] Fully asynchronous PTY, filesystem, and disk drivers.

### Memory Management

- [x] File page cache.
- [x] Memory mapped files: supporting both fully shared and private (via copy-on-write), writable, and read-only mappings.
- [x] Demand paging.
- [x] Up to 16 pagefiles that can dynamically grow and shrink with the needs of the system.
- [x] Dynamic working set management.
- [x] Extensive swapping: all user pages, along with kernel stacks, page tables, and 50% of the kernel itself, can be swapped to disk to free memory.

### Userspace

- [x] Userspace dynamic linking.
- [x] Minimal command-line interface over TTY.

## TODO

- [ ] FAT12/16/32 driver.
- [ ] Mac OS 9-lookalike window system.
- [ ] Self-hosting with a fully native toolchain.
- [ ] Networking.