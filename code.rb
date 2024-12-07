ITERATIONS = 10000000

start_time = Time.now

sum = 0
ITERATIONS.times do |i|
  100.times do |j|
    sum += i * j
  end
end

end_time = Time.now
duration = end_time - start_time

puts "Ruby Result: #{sum}"
puts "Ruby Time taken: #{duration} seconds"
