def sum_array(array)
  sorted_array = array.sort
  sorted_array.sum - sorted_array[0] - sorted_array[-1]
end

puts sum_array([1, 2, 3, 4])
puts sum_array([12, 4, 0, -8])
puts sum_array([12, 4])
puts sum_array([120, 7, 145, -10, -15])
