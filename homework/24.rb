# 24. Algorytm wczytujący dwie liczby i wypisujący największy ich wspólny dzielnik wykorzystując algorytm Euklidesa (https://pl.wikipedia.org/wiki/Algorytm_Euklidesa).

puts "Podaj pierwszą liczbę:"
a = gets.to_i

puts "Podaj drugą liczbę:"
b = gets.to_i


while a != b
  if a < b
  puts b = b - a
else
  puts a = a - b
  end
end

puts "NWD liczb to #{a}."
