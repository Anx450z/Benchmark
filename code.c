#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define ITERATIONS 10000000

int main() {
    clock_t start, end;
    double cpu_time_used;
    long long sum = 0;

    start = clock();

    // Perform some computationally intensive task
    for(int i = 0; i < ITERATIONS; i++) {
        for(int j = 0; j < 100; j++) {
            sum += i * j;
        }
    }

    end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;

    printf("C Result: %lld\n", sum);
    printf("C Time taken: %f seconds\n", cpu_time_used);

    return 0;
}
