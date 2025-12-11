#!/bin/bash
PKGBUILD_FILE="PKGBUILD"
sources=($(awk '/^source=\(/ {flag=1; next} /^\)/ {flag=0} flag {gsub(/[",]/,""); print $0}' "$PKGBUILD_FILE"))

sums=()
for f in "${sources[@]}"; do
    if [[ -f "$f" ]]; then
        sum=$(sha256sum "$f" | awk '{print $1}')
        sums+=("$sum")
    else
        echo "Warning: source file $f not found!"
        sums+=("SKIP")
    fi
done

array_str="sha256sums=("
for s in "${sums[@]}"; do
    array_str+=" '$s'"
done
array_str+=" )"

awk -v new="$array_str" '
    BEGIN {skip=0}
    /^sha256sums=/ {print new; skip=1; next}
    /^\s*$/ {if(skip) {skip=0}} 
    {if(!skip) print}
' "$PKGBUILD_FILE" > "$PKGBUILD_FILE.tmp"

mv "$PKGBUILD_FILE.tmp" "$PKGBUILD_FILE"

echo "PKGBUILD sha256sums updated."
