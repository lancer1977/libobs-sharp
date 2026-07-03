# Agent Notes

## Scope

libobs-sharp is a legacy C# wrapper around OBS Studio's `libobs` APIs. It targets .NET Framework/Mono and includes a WinForms test harness.

## Validation

Run:

```bash
./scripts/validate.sh
```

The script builds with legacy MSBuild when available. On hosts without that toolchain, it performs structural solution/project checks and reports a documented skip for the full build.

## Conventions

- Preserve x86 and x64 platform configurations.
- Do not convert the projects to SDK-style format during routine stewardship.
- Keep OBS native runtime requirements documented; avoid pretending the WinForms harness is cross-platform.
