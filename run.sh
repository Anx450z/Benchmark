#!/bin/bash

# Function to print separator
print_separator() {
    echo "----------------------------------------"
}

# Function to run benchmark and capture time
run_benchmark() {
    local name=$1
    local cmd=$2

    echo "=== $name ==="
    print_separator

    for i in {1..1}; do
        echo "Run $i:"
        # Use `time` command and redirect the output to capture real execution time
        /usr/bin/time -f "\nTime: %E (elapsed), %U (user), %S (system)" $cmd
        echo "-------------"
    done
    print_separator
    echo ""
}

# Compile C program
echo "Compiling C program..."
gcc -O3 code.c -o code_c

# Setup and compile Rust program
echo -e "\nSetting up Rust project..."
# Create project structure
mkdir -p src
# Copy the Rust source code to src/main.rs
cp code.rs src/main.rs
# Copy our custom Cargo.toml to root
cp Cargo.toml ./
# Build the release version
cargo build --release

echo -e "\nRunning benchmarks...\n"

# Run C benchmark
run_benchmark "C Program" "./code_c"

# Run Go benchmark
run_benchmark "Go Program" "go run code.go"

# Run Rust benchmark
run_benchmark "Rust Program" "./target/release/rust_bench"

# Run Ruby benchmark
run_benchmark "Ruby Program" "ruby code.rb"

# Run Elixir benchmark
run_benchmark "Elixir Program" "elixir code.exs"

# Run Node benchmark
run_benchmark "Node Program" "node code.js"

# Run Bun benchmark
run_benchmark "Bun Program" "bun code.js"

# Run Deno benchmark
run_benchmark "Deno Program" "deno run code.js"

# Run Python benchmark
run_benchmark "Python Program" "python3 code.py"

echo "Benchmark complete!"

# Optional cleanup
# rm -rf src target Cargo.toml Cargo.lock
