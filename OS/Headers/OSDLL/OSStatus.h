const STATUS_SUCCESS                   0
const STATUS_MINUS_ONE                -1 // reserved
const STATUS_NO_MEMORY                -2
const STATUS_QUOTA_EXCEEDED           -3
const STATUS_KERNEL_APC               -4
const STATUS_USER_APC                 -5
const STATUS_WAIT_TIMEOUT             -6
const STATUS_INVALID_HANDLE           -7
const STATUS_DEADLOCK_POSSIBLE        -8
const STATUS_INVALID_ARGUMENT         -9
const STATUS_INVALID_OBJECT_TYPE      -10
const STATUS_NO_SUCH_USER             -11
const STATUS_PERMISSION_DENIED        -12
const STATUS_SIGNALLED                -13
const STATUS_KILLED                   -14
const STATUS_FORBIDDEN_OPERATION      -15
const STATUS_NAME_TOO_LONG            -16
const STATUS_NOT_A_DIRECTORY          -17
const STATUS_NOT_FOUND                -18
const STATUS_NOT_SUPPORTED            -19
const STATUS_BUFFER_MAXIMUM           -20
const STATUS_NOT_AVAILABLE            -21
const STATUS_IS_A_DIRECTORY           -22
const STATUS_END_OF_DISK              -23
const STATUS_END_OF_FILE              -24
const STATUS_TRY_AGAIN_LATER          -25
const STATUS_DEVICE_BUSY              -26
const STATUS_BAD_FILESYSTEM           -27
const STATUS_NO_SUCH_FILESYSTEM       -28
const STATUS_READONLY_FILESYSTEM      -29
const STATUS_UNAVAILABLE_ADDRESS      -30
const STATUS_OVERFLOW                 -31
const STATUS_BAD_ADDRESS              -32
const STATUS_FAULT                    -33
const STATUS_NOT_IMPLEMENTED          -34
const STATUS_NOT_CORRECT_FILETYPE     -35
const STATUS_UNALIGNED                -36
const STATUS_VM_QUOTA_EXCEEDED        -37
const STATUS_BAD_EXECUTABLE           -38
const STATUS_EXEC_NOT_FOR_ARCH        -39
const STATUS_NO_SYMBOL                -40
const STATUS_SWAP_TOO_SMALL           -41
const STATUS_NO_SWAP                  -42
const STATUS_RING_FULL                -43
const STATUS_RING_EMPTY               -44
const STATUS_PAGED_QUOTA_EXCEEDED     -45
const STATUS_MUTEX_NOT_OWNED          -46
const STATUS_CONSOLE_HUNG_UP          -47
const STATUS_PROCESS_IS_TERMINATED    -48
const STATUS_ALIVE                    -49
const STATUS_ARGUMENTS_TOO_LONG       -50
const STATUS_PROCESS_NO_THREAD        -51
const STATUS_ENVIRON_NOT_FOUND        -52
const STATUS_ENVIRON_TOO_LARGE        -53
const STATUS_NOT_A_FILE               -54
const STATUS_COMMIT_EXCEEDED          -55
const STATUS_NO_CONSOLE               -56
const STATUS_HAS_CONSOLE              -57
const STATUS_ILLEGAL_NAME             -58
const STATUS_ALREADY_EXISTS           -59
const STATUS_FAULT_WHILE_STARTING     -60
const STATUS_CROSS_VOLUME             -61
const STATUS_NOT_A_SIGNAL             -62
const STATUS_INVALID_CONFIG_FILE      -63
const STATUS_NO_SUCH_GROUP            -64
const STATUS_NOT_A_CONSOLE            -65
const STATUS_OVERLAPS_MMIO            -66
const STATUS_PHYSICAL_COMMIT_EXCEEDED -67
const STATUS_TOO_MANY_SWAPFILES       -68
const STATUS_ALREADY_ENQUEUED         -69
const STATUS_NOT_ENQUEUED             -70
const STATUS_STRIPPED_EXECUTABLE      -71
const STATUS_OTHER_CONDITION          -72
const STATUS_IO_CANCELLED             -73
const STATUS_MESSAGE_TOO_LONG         -74
const STATUS_WS_QUOTA_EXCEEDED        -75
const STATUS_NO_MESSAGE               -76
const STATUS_PORT_DISCONNECTED        -77
const STATUS_CONNECTION_FAILED        -78
const STATUS_NO_SUCH_CLIENT           -79

extern OSStatusGetName { status -- name }