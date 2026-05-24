# magic-trace Tests

This directory contains tests for `magic-trace`, focusing on decoding, trace generation, and call stack processing.

## Key Files

* **[test.ml](file:///Users/xyzsam/Downloads/magic-trace/test/test.ml)**: The main test file containing expect tests. It simulates event sequences and verifies that the trace generator produces the correct Fuchsia Trace Format records. It covers:
    * Random event sequence generation.
    * Handling of initial returns (returns without matching calls).
    * Time batch spreading (allocating time to events within a batch).
    * Filtered traces based on start/stop symbols.
* **[callstack_compression_test.ml](file:///Users/xyzsam/Downloads/magic-trace/test/callstack_compression_test.ml)**: Tests the logic for compressing call stacks to reduce trace size.
* **[decode_errors.ml](file:///Users/xyzsam/Downloads/magic-trace/test/decode_errors.ml)**: Tests how the system handles and reports decoding errors from Intel PT data.
* **[perf_script.ml](file:///Users/xyzsam/Downloads/magic-trace/test/perf_script.ml)**: Helpers or tests related to parsing `perf script` output.

## Test Data

The directory also contains numerous `.perf` files (e.g., `btree_rebalance_decode_error.perf`, `page_fault.perf`). These are sample trace files captured from various scenarios, used to verify that the decoder handles real-world edge cases and errors correctly.
