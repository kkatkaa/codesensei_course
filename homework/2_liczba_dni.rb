# 2. Algorytm wczytujący liczbę dni, a następnie liczący i wypisujący liczbę sekund w tych dniach (np. dla 7 wypisze 604800).

puts "Podaj liczbę dni:"
days = gets.to_i

seconds = days * 24 * 60 * 60
puts "Liczba sekund podanych dni wynosi: #{seconds}"
