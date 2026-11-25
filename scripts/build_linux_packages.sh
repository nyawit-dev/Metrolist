#!/usr/bin/env bash

set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root_dir"
gradle="${GRADLE:-$root_dir/gradlew}"
output_dir="$root_dir/dist/packages"
binaries="$root_dir/desktopApp/build/compose/binaries/main-release"

rm -rf "$output_dir"
mkdir -p "$output_dir"

"$gradle" :desktopApp:createReleaseDistributable \
  :desktopApp:packageReleaseDeb \
  :desktopApp:packageReleaseRpm \
  -Pmetrolist.debug=false \
  --no-daemon \
  --no-configuration-cache \
  "$@"

deb="$(find "$binaries/deb" -maxdepth 1 -type f -name '*.deb' -print -quit)"
test -s "$deb" || { echo "DEB build produced no output" >&2; exit 1; }
rpm="$(find "$binaries/rpm" -maxdepth 1 -type f -name '*.rpm' -print -quit)"
test -s "$rpm" || { echo "RPM build produced no output" >&2; exit 1; }
app_dir="$binaries/app/NyawitMusic"
test -d "$app_dir" || { echo "Release distributable is missing at $app_dir" >&2; exit 1; }

cp "$deb" "$output_dir/"
cp "$rpm" "$output_dir/"
tar -czf "$output_dir/NyawitMusic-linux-x64.tar.gz" -C "$(dirname "$app_dir")" NyawitMusic

for artifact in "$output_dir"/*; do
  test -s "$artifact" || { echo "Empty Linux package: $artifact" >&2; exit 1; }
done
ls -lh "$output_dir"
