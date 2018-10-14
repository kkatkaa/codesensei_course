#17. Algorytm, który wczytuje liczby tak długo aż nie zostanie podana liczba 0, a następnie wypisuje sumę tych liczb.

puts "Zgadnij liczbę:"
n = gets.to_i

i = 0

until  n == 0
  i = i + n
  puts "Zgadnij jeszcze raz:"
  n = gets.to_i
end

puts i
