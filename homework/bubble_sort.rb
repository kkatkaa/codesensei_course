# Napisz program sortujący zadaną jako argumenty wywołania tablicę liczb metodą
# sortowania bąbelkowego
def bubble_sort(array)

  loop do
    sorted = false
    (array.length-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        sorted = true
      end
    end
      break if not sorted
    end
    array
end

puts bubble_sort([74, 77, 64, 19, 43, 47, 77, 66, 47, 60, 7, 97, 71, 87, 95, 79,
7, 19, 43, 47, 47, 60, 64, 66, 71, 74, 77, 77, 79, 87, 95, 97])
