# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.to_i
array = gets.split(" ").map(&:to_i)
array = array.sort 

  # if array's length is odd, set median as q2 and delete median element
  if n % 2 == 1
    q2 = array[n/2]
    array = array - [array.delete_at(n/2)]
  # if array's length is even, take the average of the two median elements
  else
    q2 = (array[(array.length / 2)] + array[(array.length / 2) - 1]) / 2 
  end

  # Split array into equal halves
  lower_array, upper_array = array.each_slice(n/2).to_a

  # If lower array's length is even, take the average of the two median elements
  if lower_array.length % 2 == 0
    q1 = (lower_array[(lower_array.length/2)] + lower_array[(lower_array.length/2) - 1]) / 2
  else
    q1 = lower_array[lower_array.length / 2]
  end

  # If upper array's length is even, take the average of the two median elements
  if upper_array.length % 2 == 0
    q3 = (upper_array[(upper_array.length / 2)] + upper_array[(upper_array.length / 2) - 1]) / 2 
  else
    q3 = upper_array[lower_array.length / 2]
  end

puts q1
puts q2
puts q3



