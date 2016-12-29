# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.to_i
x = gets.split(" ").map(&:to_i)
w = gets.split(" ").map(&:to_i)

def weighted_mean(n, x, w)  

  # Calculate the sum of all (x * w)'s'
  numerator = 0 
  i = 0
  while i < n 
    numerator = (x[i] * w[i]).to_f + numerator
    i += 1
  end

  # Calculate the sum of weights
  denominator = w.inject(0){|sum, x| sum + x}

  # print weighted mean as is if it's even, and round it to 1 decimal space if odd. 
  if (numerator / denominator) % 1 == 0
    return numerator / denominator
  else
    return (numerator / denominator).round(1)
end


puts weighted_mean(n, x, w)


