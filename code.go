package main

import (
    "fmt"
    "time"
)

const ITERATIONS = 1000000

func main() {
    var sum int64 = 0
    start := time.Now()

    // Perform some computationally intensive task
    for i := 0; i < ITERATIONS; i++ {
        for j := 0; j < 100; j++ {
            sum += int64(i * j)
        }
    }

    duration := time.Since(start)

    fmt.Printf("Go Result: %d\n", sum)
    fmt.Printf("Go Time taken: %f seconds\n", duration.Seconds())
}
