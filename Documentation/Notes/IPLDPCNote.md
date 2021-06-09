# Note on using IPLDPC for thread serialization

Various kernel code frequently `KeIPLRaise`s to IPLDPC in order to achieve serialization with other threads in the system when manipulating a linked list, or some other operation, without being so ham-fisted as to disable all interrupts.

However, `KeIPLRaise` and the corresponding `KeIPLLower` both spend a decent chunk of time with interrupts disabled anyway.

Therefore, for really fast operations (like inserting or removing a single item from a linked list), it is sometimes actually faster to just disable interrupts using `HALCPUInterruptDisable` and `HALCPUInterruptRestore` for the duration of the operation.