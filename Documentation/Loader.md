# MINTIA Boot Process

The boot process starts when the [LIMNstation BIOS](https://github.com/limnarch/a3x) grabs [Loader](https://github.com/limnarch/mintia/tree/main/OS/Loader) from blocks 2-15 of the selected boot partition and jumps to it. True to its name, Loader will locate and load essential MINTIA components.

| Component                   | Typical Path                   | Description                                                                                                                            |
|-----------------------------|--------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| MINTIA Kernel               | /mintia/OSKernel.exe | The main body of kernel code, the center of the operating system.                                                                      |
| Hardware Abstraction Layer  | /mintia/HALLIMNstation.dll  | Anything and everything platform-specific in the kernel is put in the HAL, which forms the very lowest layer of the operating system.  |
| Dragonfruit Runtime Library | /mintia/Dragonfruit.dll     | The dragonfruit library. User programs also link with this library.                                                                    |
| Drivers                     | /mintia/BootDrivers/        | Any drivers that Loader determines are necessary to operate the machine.                                                               |
| Binary Resources            | /mintia/BootResources/      | Large reclaimable resources like fonts and logos.                                                                                      |
| Kernel Debugger             | /mintia/224Debug.exe        | Optionally loadable kernel debugger.                                                                                                   |

## Loader
Source code: `/OS/Loader/`

Loader starts by loading the kernel, OSKernel.exe, from the system directory. It will also load any dependencies of the kernel. This process will typically drag in the Hardware Abstraction Layer (HAL) and the dragonfruit library. It will try to fit these things into the natural addresses they're linked to, but if it can't, it will relocate them. This is much slower, and therefore bad, and should be avoided.

Loader will then iterate through the BIOS device tree and load the drivers for any unique device models it finds. It will try to load them as "[model]:[revision].sys". It will also read the `BootDrivers.txt` file, and load any modules it finds there, assuming they are not already loaded.

It will then read the `BootResources.txt` file to locate resources and load that are needed by the kernel, such as the HAL font or the boot logo.

After loading all required files, Loader will jump to the HAL's entry point.

### Loader Options

A number of boot arguments can be specified in the BIOS that have an effect on Loader's behavior.

Where there's a filename, it will interpret it as a path relative to the `/mintia/` system directory. This can be overridden by prefixing it with a `/` character, which will make it an absolute path.

| Format         | Name         | Behavior                                                                                                                                                       |
|----------------|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| HAL=[filename] | HAL          | Specifies an alternate code module to load in the place of the default platform HAL. |
| DBG=[filename] | Debugger     | Specifies a kernel mode debugger to load. |
| -relink        | Force Relink | Forces Loader to relink all modules, even if they were successfully loaded at their preferred address. This can help diagnose strange boot DLL version issues. |
| BOOT=[dev]     | Boot Device  | Explicitly specifies the name of the boot device. Default is determined by the bootloader. |