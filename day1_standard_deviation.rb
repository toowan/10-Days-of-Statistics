# Enter your code here. Read input from STDIN. Print output to STDOUT

n = gets.strip.to_i
array = gets.split(" ").map(&:to_i)

# Calculate the mean
mean = (array.inject(0){|sum, x| sum + x}) / n

# Calculate squared distance for each element and store results in an array
sq_distances = []
for i in 0...n
  result = (array[i] - mean)**2 
  sq_distances << result
end

# Find the sum of all the squared distances
sq_distance_sum = sq_distances.inject(0){|sum, x| sum + x}

# Take the square root of the (sum / n) and around to 1 decimal place. 
standard_dev = Math.sqrt(sq_distance_sum/n).round(1)
puts standard_dev
