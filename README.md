# MINTIA

MINTIA is an overengineered operating system for LIMNstation, incorporating design principles borrowed from Windows NT and OpenVMS.

It is an attempt at a better-designed sibling of the [AISIX](http://github.com/limnarch/aisix) project, which has been relegated to proof-of-concept status.

WIP: MINTIA is not currently in an even minimally usable state.

## Implemented features

1. Dynamically-linked kernel modules.
2. Priority-based preemptive multitasking with wait boosting.
3. Nested interrupts.
4. IPLs (analogous to Windows IRQLs), DPCs, and APCs.
5. Waiting on multiple events at once (akin to win32's WaitForMultipleObjects).
6. An Object Manager for centralized resource tracking and IPC.
7. Unix-like permissions model.
8. Loadable kernel-mode debugger with stack tracing.
9. NT-like (filestream) cache.
10. AisixFS read-only support.
11. Demand paging, memory-mapped files, etc.

## Planned features (in rough descending order of priority)

1. Userspace dynamic linking. (in progress)
2. Swap files.
3. Command-line interface.
4. AisixFS write support, FAT32 driver
5. Mac OS 9-like window system.

![Running](https://i.imgur.com/ITFIXBl.png)
