#!/bin/sh

for d in ~/.vim/bundle/*/ ; do
        echo "Updating $d"
        pushd $d
        git pull -p
        popd
done
