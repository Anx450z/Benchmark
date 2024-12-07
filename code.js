const ITERATIONS = 10000000;

function runBenchmark() {
  const start = performance.now();
  let sum = 0n; // Using BigInt to handle large numbers like in C

  // Perform the same computationally intensive task
  for (let i = 0; i < ITERATIONS; i++) {
    for (let j = 0; j < 100; j++) {
      sum += BigInt(i * j);
    }
  }

  const end = performance.now();
  const timeUsed = (end - start) / 1000; // Convert to seconds

  console.log(`js Result: ${sum}`);
  console.log(`js Time taken: ${timeUsed} seconds`);
}

// Run the benchmark
runBenchmark();
