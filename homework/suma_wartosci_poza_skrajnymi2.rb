def sum_array(array)
  sorted_array = array.sort
  sorted_array.sum - sorted_array.first - sorted_array.last
end

puts "Suma wynosi: #{sum_array([1, 2, 3, 4])}"
puts "Suma wynosi: #{sum_array([12, 4, 0, -8])}"
puts "Suma wynosi: #{sum_array([12, 4])}"
puts "Suma wynosi: #{sum_array([120, 7, 145, -10, -15])}"
