#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
from pathlib import Path
import xml.etree.ElementTree as ET

solution = Path("libobs-sharp.sln").read_text(encoding="utf-8-sig")
for expected in ("libobs-sharp\\libobs-sharp.csproj", "test\\test.csproj", "Release|x86", "Release|x64"):
    if expected not in solution:
        raise SystemExit(f"solution is missing {expected}")

ns = {"msb": "http://schemas.microsoft.com/developer/msbuild/2003"}
for project in (Path("libobs-sharp/libobs-sharp.csproj"), Path("test/test.csproj")):
    tree = ET.parse(project)
    root = tree.getroot()
    target = root.find(".//msb:TargetFrameworkVersion", ns)
    if target is None or target.text != "v3.5":
        raise SystemExit(f"{project} does not target .NET Framework v3.5")
print("libobs-sharp solution and project structure checks passed")
PY

if [[ -n "${MSBUILD_EXE:-}" ]]; then
  msbuild_cmd="$MSBUILD_EXE"
elif command -v msbuild >/dev/null 2>&1; then
  msbuild_cmd="msbuild"
else
  echo "Skipping full build: legacy MSBuild is not available on this host."
  echo "Run this script on Windows with Visual Studio Build Tools for compile validation."
  exit 0
fi

"$msbuild_cmd" libobs-sharp.sln -p:Configuration=Release -p:Platform=x86 -restore

echo "libobs-sharp validation passed"
