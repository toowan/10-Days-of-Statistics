# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.to_i
array = gets.split(" ").map(&:to_i)

def mean(array, n)  
  # Take the sum of all the elements in the array and divide by n
  ((array.inject(0){|sum, x| sum + x}) / n.to_f)
end

def median(array, n) 
  # sort the array  
  sorted_array = array.sort 
  # get the average of the two middle numbers
  (sorted_array[(n-1)/2] + sorted_array[n/2]) / 2.0
end

def mode(array, n)
  sorted_array = array.sort 
  number_ocurrences = Hash.new(0)

  # count the number of occurences of each value
  sorted_array.each do |number|
    number_ocurrences[number] += 1
  end

  # Returns the key of the key-value pair based on the max value.  
  number_ocurrences.max_by{|k, v| v}[0]

end

puts mean(array, n)
puts median(array, n)
puts mode(array, n)

