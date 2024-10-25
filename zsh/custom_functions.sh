#!/bin/bash
co2str () {
    local filter="*"
    if [ $# -eq 1 ]; then
        filter="$1"
    fi

    # Use tree with the filter, but only for files (-P option)
    # -I option excludes hidden files and directories
    tree -L 4  -P "$filter" -I ".*" --prune --matchdirs

    echo ""

    find . -type f -not -path '*/\.*' -name "$filter" -print0 | while IFS= read -r -d '' file
    do
        # Check if the file is a text file
        if file -b --mime-type "$file" | grep -q "^text/"; then
            echo "=== $file ==="
            cat "$file"
            echo ""
        fi
    done
}

gch() {
    local name="Leonhard Heizinger"
    local email="l.heizinger@consolinno.de"
    LANG=en_us_8859_1 
    local timestamp=$(date "+%a, %d %b %Y %H:%M:%S %z")
    
    echo " -- $name <$email>  $timestamp"
}
