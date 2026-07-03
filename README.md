libobs-sharp
============

C# wrapper for libobs (part of obs-studio, multiplatform rewrite of Open Broadcaster Software)

## Repository Layout

* `libobs-sharp/` - C# wrapper library for libobs native APIs.
* `test/` - WinForms test harness and sample UI.
* `helpers/` - Visual Studio/Mono helper setup.
* `libobs-sharp.sln` - Visual Studio solution with x86 and x64 configurations.
* `scripts/validate.sh` - local validation entrypoint.

### Requirements

* [obs-studio](https://github.com/jp9000/OBS-studio)
* .NET Framework 4.5.2 / Mono

### Installation

* Recommended: Place libobs-sharp to root of the obs-studio directory (obs-studio/libobs-sharp)
* Debugging: Use the obs-studio output folder as project working directory (obs-studio\build\rundir\Debug\bin\32bit)
* Binaries: In the same directory as other obs-studio output files.

### Windows / Visual Studio

* See helpers/PrepareMonoVS

## Validation

Run:

```bash
./scripts/validate.sh
```

On a machine with legacy MSBuild available, the script builds the x86 Release solution configuration. On Linux hosts without legacy .NET Framework tooling, it performs structural checks against the solution and project files and exits with a documented build skip.

### TODO

* CMake (Windows/Linux/OS X)
* Maintain compatibility with Mono
