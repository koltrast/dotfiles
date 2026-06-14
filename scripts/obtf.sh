#!/bin/bash
DATE=$(date "+%Y-%m-%d %a")
SEPARATOR="--------------"
HEAD=$(head -3 ~/everything.txt)

if [[ "$HEAD" != *"$DATE"* ]]; then
  printf "%s\n%s\n%s\n\n" "$SEPARATOR" "$DATE" "$SEPARATOR" |
    cat - ~/everything.txt >/tmp/obtf && mv /tmp/obtf ~/everything.txt
fi

$EDITOR ~/everything.txt
