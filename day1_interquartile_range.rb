# Enter your code here. Read input from STDIN. Print output to STDOUT

n = gets.to_i
elements = gets.split(" ").map(&:to_i)
frequencies = gets.split(" ").map(&:to_i)

element_frequencies = []

# Add the elements according to their frequencies to an array
i = 0
while i < n
    frequencies[i].times do
        element_frequencies << elements[i]  
    end
  i += 1
end

# Sort elements in ascending order
sorted_elements = element_frequencies.sort


# If sorted_elements's length is odd, remove median item.  
if sorted_elements.length % 2 == 1
  sorted_elements.delete_at(sorted_elements.length/2)
end


# Split sorted_elements into equal halves
lower_sorted_elements, upper_sorted_elements = sorted_elements.each_slice(sorted_elements.length/2).to_a

# If sorted_elements's length is even, take the average of the two median elements
def quartile(sorted_elements)
  if sorted_elements.length % 2 == 0
    (sorted_elements[(sorted_elements.length / 2)] + sorted_elements[(sorted_elements.length / 2) - 1]).to_f / 2
  else
    sorted_elements[sorted_elements.length / 2].to_f
  end
end

q1 = quartile(lower_sorted_elements)
q3 = quartile(upper_sorted_elements)

interquartile_range = q3 - q1

puts interquartile_range

