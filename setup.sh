#!/bin/bash

for f in .*
do
    [ "$f" == "."    ] && continue
    [ "$f" == ".."   ] && continue
    [ "$f" == ".git" ] && continue
    ln -s --backup=existing "$f" "~/$f"
done
