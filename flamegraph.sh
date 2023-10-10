#!/bin/bash -e

if [[ $# -ne 1 ]]; then
    echo "Usage: flamegraph.sh <pid>"
    exit 1
fi

echo "Recording stack traces for pid: $1"
perf record -F 99 -p $1 -g -- sleep 60

echo "Generating out.perf..."
perf script > out.perf

echo "Generating out.folded..."
./stackcollapse-perf.pl out.perf > out.folded

echo "Generating flamegraph.svg..."
./flamegraph.pl out.folded > flamegraph.svg

echo "Done."
