# Napisz funkcję, która dla otrzymanej tablicy liczb całkowitych zwraca tablicę tych
# samych liczb, ale o przeciwnej wartości.

def invert_array(array)
  invert_array = array.map {|element| element * -1}
  invert_array.to_s
end

puts invert_array([1, 2, 3, 4, 5]) #=> [-1, -2, -3, -4, -5]
puts invert_array([1, -2, 3, -4, 5]) #=> [-1, 2, -3, 4, -5]
puts invert_array([0]) #=> [0]
