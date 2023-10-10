# flamegraph
Inspired by https://github.com/brendangregg/FlameGraph

## Usage
```
./flamegraph.sh <pid>
```

## Dependencies
- Linux `perf` can be found in most package repositories for linux distros
- `perl`
- Optional: enable kernal profiling `sudo sysctl kernel.perf_event_paranoid=-1`
