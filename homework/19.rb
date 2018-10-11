# 19. Algorytm, który wczytuje liczbę n, a następnie liczy i wypisuje sumę kwadratów liczb 1..n (1 + 4 + 9 + ... + n^2).

puts "Podaj liczbę:"
n = gets.to_i

  i = 0
  potega = 0
  suma = 0

  while
    i < n
    i += 1
    puts potega = i ** 2
    suma = suma + potega
  end

puts "Suma kwadratów to: #{suma}."
