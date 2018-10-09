puts "Podaj liczbę:"

wynik  = 1
i = 1
n = gets.to_i

while n > i
  i += 1
  wynik *= i
end
  puts "Silnia podanej liczby to: #{wynik}"
