# Andromeda Boot Process

The boot process starts when the [LIMNstation BIOS](https://github.com/limnarch/a3x) grabs [Loader](https://github.com/limnarch/andromeda/tree/main/OS/Loader) from blocks 2-15 of the selected boot partition and jumps to it. True to its name, Loader will locate and load essential Andromeda components.

| Component                   | Typical Path                   | Description                                                                                                                            |
|-----------------------------|--------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| Andromeda Kernel            | /Andromeda/AndromedaKernel.exe | The main body of kernel code, the center of the operating system.                                                                      |
| Hardware Abstraction Layer  | /Andromeda/HALLIMNstation.dll  | Anything and everything platform-specific in the kernel is put in the HAL, which forms the very lowest layer of the operating system.  |
| Dragonfruit Runtime Library | /Andromeda/Dragonfruit.dll     | The dragonfruit library. User programs also link with this library.                                                                    |
| Drivers                     | /Andromeda/BootDrivers/        | Any drivers that Loader determines are necessary to operate the machine.                                                               |
| Binary Resources            | /Andromeda/BootResources/      | Large reclaimable resources like fonts and logos.                                                                                      |
| Kernel Debugger             | /Andromeda/224Debug.exe        | Optionally loadable kernel debugger.                                                                                                   |

## Loader

Loader starts by loading the kernel, AndromedaKernel.exe, from the system directory. It will also load any dependencies of the kernel. This process will typically drag in the Hardware Abstraction Layer (HAL) and the dragonfruit library. It will try to fit these things into the natural addresses they're linked to, but if it can't, it will relocate them. This is much slower, and therefore bad, and should be avoided.

Loader will then iterate through the BIOS device tree and load the drivers for any unique device models it finds. It will try to load them as "[model]:[revision].dll", and if one or more drivers for the suitable model is found, but not for the correct revision number, it will present a list of choices to the user to try to use for that device. It will also read the `BootDrivers.txt` file, and load any modules it finds there, assuming they are not already loaded.

It will then read the `BootResources.txt` file to locate resources and load that are needed by the kernel, such as the HAL font or the boot logo.

After loading all required files, Loader will jump to the HAL's entry point.

### Loader Options

A number of boot arguments can be specified in the BIOS that have an effect on Loader's behavior.

Where there's a filename, it will interpret it as a path relative to the `/Andromeda/` system directory. This can be overridden by prefixing it with a `/` character, which will make it an absolute path.

| Format         | Name         | Behavior                                                                                                                                                       |
|----------------|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| HAL=[filename] | HAL          | Specifies an alternate code module to load in the place of the default platform HAL.                                                                           |
| DBG=[filename] | Debugger     | Specifies a kernel mode debugger to load.                                                                                                                      |
| -relink        | Force Relink | Forces Loader to relink all modules, even if they were successfully loaded at their preferred address. This can help diagnose strange boot DLL version issues. |
| HEAPMAX=[KB]   | Heap Maximum | Changes the maximum size of the kernel heap, in kilobytes. Default is 512KB.                                                                                   |
| HEAPMIN=[KB]   | Heap Minimum | Changes the minimum size of the kernel heap, in kilobytes. Default is 32KB.                                                                                    |
| HEAPSHF=[N]    | Heap Shift   | Changes the proportion of memory to dedicate to the kernel heap (1/2^N). Default is 5 (1/32).                                                                  |

## Hardware Abstraction Layer

The HAL will do platform-specific initialization and then pass control to KeMain.