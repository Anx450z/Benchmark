use std::time::Instant;

const ITERATIONS: i64 = 1_000_000;

fn main() {
    let start = Instant::now();

    let mut sum: i64 = 0;
    for i in 0..ITERATIONS {
        for j in 0..100 {
            sum += i * j;
        }
    }

    let duration = start.elapsed();
    println!("Rust Result: {}", sum);
    println!("Rust Time taken: {:?} seconds", duration.as_secs_f64());
}
