# Andromeda

Andromeda is an overengineered operating system for LIMNstation, based largely around design principles borrowed from UNIX, Windows NT, and OpenVMS (mostly the last two).

It is an attempt at a better-designed sibling of the [AISIX](http://github.com/limnarch/aisix) project. AISIX was a "usable" operating system and didn't *need* to die, but I grew a distaste for it being bad Unix clone #129283, so I decided to write a not-Unix and relegate AISIX to proof-of-concept status.

WIP: Andromeda is not currently in even a minimally usable state.

## (Mostly-)Implemented features

1. Dynamically-linked kernel modules (including all drivers).
2. Millisecond resolution timer expiration.
3. Priority-based preemptive multitasking with wait boosting.
4. Nested interrupts.
5. IPLs (analogous to Windows IRQLs), DPCs, and APCs.
6. Waiting on multiple events at once (akin to win32's WaitForMultipleObjects).
7. NT-like Object Manager for centralized resource tracking and IPC.
8. Unix-like permissions model.
9. Paging enabled in kernel-space.
10. Basically portable (to 32-bit architectures with a 4kb page size).
11. NT-like layered kernel design.
12. Loadable kernel-mode debugger with stack tracing and basic commands.
13. Fully multithreaded kernel.

## Planned features (in rough order of priority)

1. Unix-like (synchronous) I/O manager with NT-like (filestream) cache. (in progress)
2. Filesystem drivers (aisixfs and FAT32).
3. Demand paging, memory-mapped files, etc.
4. Userspace processes and dynamic linking.
5. Mac OS 9-like window system.

![Running](https://i.imgur.com/dFxBZO5.png)
