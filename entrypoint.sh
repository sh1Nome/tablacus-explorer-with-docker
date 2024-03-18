#!/bin/sh

unzip -d ./te te230913.zip

trap 'exit 0' TERM
tail -f /dev/null & wait $!
