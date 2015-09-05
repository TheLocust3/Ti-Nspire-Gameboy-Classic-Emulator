#!/bin/sh
echo Combining lua files
ruby scripts/concat.rb -t
echo Building tns file
luna release/full.lua release/full.tns
echo Build complete
