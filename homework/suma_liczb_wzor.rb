# Napisz funkcję, która liczy sumę parzystych liczb z zakresu od 1..n wyprowadzając/znajdując wzór na sumę takich liczb (podpowiedź: jest to ciąg
# arytmetyczny)

puts "Podaj liczbę:"
n = gets.to_i

suma_liczb_parzystych = ((2 + n)/2) * (n/2)

puts "Suma liczb parzystych wynosi #{suma_liczb_parzystych}."
