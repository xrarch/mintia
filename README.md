# MINTIA

MINTIA is an overengineered operating system for LIMNstation, incorporating design principles borrowed from Windows NT and OpenVMS.

It is an attempt at a better-designed sibling of the [AISIX](http://github.com/limnarch/aisix) project, which has been relegated to proof-of-concept status.

WIP: MINTIA is not currently in an even minimally usable state.

## Implemented features

1. Dynamically-linked kernel modules (including all drivers).
2. Priority-based preemptive multitasking with wait boosting.
3. Nested interrupts.
4. IPLs (analogous to Windows IRQLs), DPCs, and APCs.
5. Waiting on multiple events at once (akin to win32's WaitForMultipleObjects).
6. An Object Manager for centralized resource tracking and IPC.
7. Unix-like permissions model.
8. NT-like layered kernel design.
9. Loadable kernel-mode debugger with stack tracing and basic commands.
10. Unix-like (synchronous) I/O manager with NT-like (filestream) cache.
11. AisixFS read-only support.

## Planned features (in rough descending order of priority)

1. Demand paging, memory-mapped files, etc. (in progress)
2. Userspace processes and dynamic linking.
3. AisixFS write support, FAT32 driver
4. Mac OS 9-like window system.

![Running](https://i.imgur.com/ITFIXBl.png)
