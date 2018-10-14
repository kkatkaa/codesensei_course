# 21. Algorytm, który wczytuje liczbę n, liczy i wypisuje wartość funkcji silnia dla niej. Funkcja silnia(n) to iloczyn kolejnych liczb 1 * 2 * ... * n (np. dla 6 silnia to 720).


puts "Podaj liczbę:"

wynik  = 1
i = 1
n = gets.to_i

while n > i
  i += 1
  wynik *= i
end

puts "Silnia podanej liczby to: #{wynik}"
