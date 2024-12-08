import time

ITERATIONS = 1000000

start_time = time.time()

sum = 0
for i in range(ITERATIONS):
    for j in range(100):
        sum += i * j

end_time = time.time()
duration = end_time - start_time

print(f"Python Result: {sum}")
print(f"Python Time taken: {duration} seconds")
