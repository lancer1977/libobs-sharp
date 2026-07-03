# Repo State

Last reviewed: 2026-07-03

## Status

libobs-sharp is a legacy C# interop wrapper for OBS Studio's `libobs` native API with a WinForms test harness.

## Validation

- `./scripts/validate.sh`
- GitHub Actions runs the same script on `windows-latest` with MSBuild configured.

## Steward Notes

- Documentation spine restored.
- Validation entrypoint added.
- Full build validation depends on legacy .NET Framework/Mono tooling and OBS runtime expectations.
