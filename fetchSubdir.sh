#!/usr/bin/env bash

echo "fetch @ $(date +'%Y%m%d')"

# list all directory (non-recursively) under pwd in bash
for directory in `find . -maxdepth 1 -mindepth 1 -type d -not -name .git`
do
    if [ -f "$directory/fetch.sh" ]; then
        dname=$(basename $directory)
        cd "$directory"
        ./fetch.sh
        if [ $? -ne 0 ]; then
            echo "$dname fail to fetch"
        else
            echo "$dname is done"
        fi
        cd -
    else
        echo "not found fetch.sh in $directory"
    fi
done

