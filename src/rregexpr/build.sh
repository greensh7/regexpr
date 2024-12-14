#!/bin/bash

# The following is added to the project's .cargo/config file:
# RUSTFLAGS='-C target-feature=+crt-static'
cargo build --release --target x86_64-unknown-linux-gnu
strip -v --strip-unneeded target/x86_64-unknown-linux-gnu/release/rregexpr
upx --best target/x86_64-unknown-linux-gnu/release/rregexpr

exit 0
