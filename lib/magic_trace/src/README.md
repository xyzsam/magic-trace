# Magic_trace Library Source

This directory contains the source code for the `magic_trace` library, which allows OCaml programs to programmatically trigger snapshots.

## Files

* **[magic_trace.ml](file:///Users/xyzsam/Downloads/magic-trace/lib/magic_trace/src/magic_trace.ml)**: Implements the OCaml interface for taking snapshots and marking durations.
* **[magic_trace.mli](file:///Users/xyzsam/Downloads/magic-trace/lib/magic_trace/src/magic_trace.mli)**: Defines the public API for the library, including `take_snapshot`, `mark_start`, and the `Min_duration` module.
* **[stop_stubs.c](file:///Users/xyzsam/Downloads/magic-trace/lib/magic_trace/src/stop_stubs.c)**: Contains the dummy C function that serves as the stable symbol for `magic-trace` to attach to for snapshots.
* **[import.ml](file:///Users/xyzsam/Downloads/magic-trace/lib/magic_trace/src/import.ml)**: Internal module for imports.
