# 16. Algorytm, który wczytuje liczbę n i wypisuje kolejno liczby 1, -n, 2, -n+1, 3, -n+2, ..., n, -1 (np. dla n = 3 wypisze 1, -3, 2, -2, 3, -1). Jeśli na wejściu podano liczbę < 1 należy wypisać komunikat "Liczba musi być > 0" i zakończyć algorytm.

puts "Podaj liczbę:"
n = gets.to_i

i = 1

if
n < 1
  puts "Liczba musi być większa od 0."
elsif
  while i <= n
    puts i, (n * -1) +i -1
    i += 1
  end
end
