# Napisz program sortujący zadaną jako argumenty wywołania tablicę liczb metodą quick
# sort.

def quick_sort(array)
  (pivot = array.pop)?
  quick_sort(array.select{|i| i <= pivot}) + [pivot] + quick_sort(array.select{|i| i > pivot}) : []
end

puts quick_sort([74, 77, 64, 19, 43, 47, 77, 66, 47, 60, 7, 97, 71, 87, 95, 79,
7, 19, 43, 47, 47, 60, 64, 66, 71, 74, 77, 77, 79, 87, 95, 97, 78])
