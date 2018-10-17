# Napisz funkcję, która liczy sumę parzystych liczb z zakresu od 1..n korzystając z wybranej pętli, np. while.

puts "Podaj liczbę:"
n = gets.to_i

suma_liczb_parzystych = 0
i = 0

while i <= n
  suma_liczb_parzystych = suma_liczb_parzystych + i
  i += 2
end

puts "Suma liczb parzystych wynosi #{suma_liczb_parzystych}."
