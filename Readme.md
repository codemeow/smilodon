# Smilodon function library
## Overview
**Smilodon** function library is a set of useful procedures, constants and macro to be used in 6502 ca65 project.

The functionality includes:
 * Basic constants and registers addresses
 * 16-bit pointer math, including addition and subtraction and dereferencing
 * PPU nametables constants, inluding Y shifts and converters

## Build and use
### Build
#### Using default ca65
To build the required object files just call `make` with default arguments:
```sh
$ make
```
#### Using custom ca65
If your ca65 compiler is not system-wide installed, provide the compiler name as follows:
```sh
CUSTOM_CA65=../../git/cc65/ca65 make
```

### Use
To use the **Smilodon** library you should
 * Add project's `includes` directory to your compiler's string with `--include-dir` option: 
```sh
ca65 --include-dir ../../git/smilodon/includes ...
```
 * Add project's `objects` directory to your linker's string
```sh
ld65 ../../git/smilodon/objects/*.o ...
```
 * Include main **Smilodon** project header with `.include` directive in any file to use the provided functionslity:
```arm
.include "smilodon.h65"
```

## FAQ

 - Why the project uses non-standart file extensions? `a65` for source files and `h65` for headers?
   - This helps to distinguish the 6502 assembly files from any other assembly files. The text editors could be supplied with assembly highlighting but it is usually set up for ARM or INTEL assembly which won't fit for 6502. Different extension allows to configure the correct highlighting to be used with correct files.
  - Why header files have `.ifndef` directives at the beginning of the file?
    - This trick is called "[include guards](https://en.wikipedia.org/wiki/Include_guard)" and allows to include these headers multiple times at different levels (imagine including `a.h65` and `b.h65` at the same time without knowing that `b.h65` already includes `a.h65`)

