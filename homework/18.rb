# 18. Algorytm, który wczytuje liczby tak długo aż nie zostanie podana liczba 0, a następnie wypisuje sumę liczb parzystych.

puts "Zgadnij liczbę:"
n = gets.to_i

i = 0

until  n == 0
  if n % 2 == 0
    i = i + n
  end
  puts "Zgadnij jeszcze raz:"
  n = gets.to_i
end

puts i
