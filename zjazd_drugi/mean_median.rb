  my_array = [1,2,6,4,5]

def mean(numbers)
  i = 0
  sum = 0
  while i < numbers.count
    sum += numbers[i]
    i += 1
  end
  sum / numbers.count
end

puts "Moja średnia #{mean(my_array)}"
my_var = mean(my_array)

puts my_var

def median(numbers)
  if numbers.length.even?
    mediana = (numbers[numbers.length / 2] + numbers[numbers.length/ 2-1]) / 2.0
  else
    mediana = numbers[numbers.length / 2]
  end
  mediana
end

puts "Moja mediana #{median(my_array)}"

def print_mean_and_median(numbers)
  puts "Widok z mojej metody"
  puts "Moja średnia #{mean(numbers)}"
  puts "Moja mediana #{median(numbers)}"
end

print_mean_and_median(my_array)
