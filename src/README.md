# magic-trace Source Directory

This directory contains the core implementation of `magic-trace`.

## Key Components

### Traced Execution Control
These files handle attaching to processes, setting breakpoints, and managing triggers.
* **[breakpoint.ml](file:///Users/xyzsam/Downloads/magic-trace/src/breakpoint.ml)**: Manages hardware breakpoints used as snapshot triggers.
* **[ptrace.ml](file:///Users/xyzsam/Downloads/magic-trace/src/ptrace.ml)**: Provides wrappers for the `ptrace` system call to control target processes.
* **[when_to_snapshot.ml](file:///Users/xyzsam/Downloads/magic-trace/src/when_to_snapshot.ml)**: Defines the logic for when a trace snapshot should be taken.

### Perf Data Processing
These files interact with Linux `perf` and decode its output.
* **[perf_tool_backend.ml](file:///Users/xyzsam/Downloads/magic-trace/src/perf_tool_backend.ml)**: Drives the external `perf` tool to collect Intel PT data.
* **[perf_decode.ml](file:///Users/xyzsam/Downloads/magic-trace/src/perf_decode.ml)**: Decodes the raw trace data produced by `perf`.
* **[perf_map.ml](file:///Users/xyzsam/Downloads/magic-trace/src/perf_map.ml)**: Parses `/tmp/perf-<pid>.map` files for JIT-compiled languages.

### Trace Generation
These files are responsible for producing the final trace file.
* **[trace_writer.ml](file:///Users/xyzsam/Downloads/magic-trace/src/trace_writer.ml)**: The main logic for writing traces in the Fuchsia Trace Format.
* **[callstack_compression.ml](file:///Users/xyzsam/Downloads/magic-trace/src/callstack_compression.ml)**: Compresses call stacks to reduce trace file size.
* **[event.ml](file:///Users/xyzsam/Downloads/magic-trace/src/event.ml)**: Represents trace events.

### Symbol & ELF Handling
These files deal with resolving addresses to human-readable symbols.
* **[elf.ml](file:///Users/xyzsam/Downloads/magic-trace/src/elf.ml)**: Parses ELF binaries to extract symbol tables and debug information.
* **[demangle_ocaml_symbols.ml](file:///Users/xyzsam/Downloads/magic-trace/src/demangle_ocaml_symbols.ml)**: Specifically handles demangling of OCaml symbols.
* **[symbol_selection.ml](file:///Users/xyzsam/Downloads/magic-trace/src/symbol_selection.ml)**: Logic for fuzzy-selecting symbols for triggers.

### System Utilities
* **[boot_time.ml](file:///Users/xyzsam/Downloads/magic-trace/src/boot_time.ml)**: Helpers for dealing with system boot time.
* **[timer_resolution.ml](file:///Users/xyzsam/Downloads/magic-trace/src/timer_resolution.ml)**: Detects the resolution of the system timer.
