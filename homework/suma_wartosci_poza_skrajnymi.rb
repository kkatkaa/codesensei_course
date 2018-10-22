# Napisz funkcję, która jako argument przyjmie tablicę liczb i zwróci sumę wszystkich
# elementów poza wartością najwyższą i najniższą.

def sum_array(array)
  sum = array.sum - array.min - array.max
end

puts "Suma wynosi: #{sum_array([1, 2, 3, 4])}"
puts "Suma wynosi: #{sum_array([12, 4, 0, -8])}"
puts "Suma wynosi: #{sum_array([12, 4])}"
puts "Suma wynosi: #{sum_array([120, 7, 145, -10, -15])}"
