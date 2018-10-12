# Napisz program wyliczający największy wspólny dzielnik dwóch liczb używając
# algorytmu Euklidesa.
# $ ruby gcd.rb 17856 9792
# 576
# Do konwersji łańcucha znaków do liczby użyj metody String#to_i.

a = "17856"
a = a.to_i
puts "Pierwsza liczba #{a}"
b = "9792"
b = b.to_i
puts "Druga liczba #{b}"

while a != b
  if a < b
  puts b = b - a
else
  puts a = a - b
  end
end

puts "NWD liczb to #{a}."
