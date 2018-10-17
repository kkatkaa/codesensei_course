# Napisz funkcję, która liczy sumę parzystych liczb z zakresu od 1..n korzystając z metod Range#step i Enumerable#sum.

puts "Podaj liczbę:"
n = gets.to_i

suma_liczb_parzystych = (2..n).step(2).sum

puts "Suma liczb parzystych wynosi #{suma_liczb_parzystych}."
