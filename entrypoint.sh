#!/bin/sh

rm -r /build/te/*
cp -r /work/te /build

trap 'exit 0' TERM
tail -f /dev/null & wait $!
