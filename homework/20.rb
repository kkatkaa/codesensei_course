# 20. Algorytm, który wczytuje liczbę i wypisuje jej sumę cyfr (np. dla liczby 378 wypisuje 18). Skorzystaj z operacji % 10 aby pobrać wartość ostatniej cyfry.

puts "Podaj liczbę:"
n = gets.to_i

reszta = 0
suma = 0

  loop do
    reszta = n % 10
    suma = suma + reszta
    n = n / 10
    break if n < 10
  end
puts "Suma cyfr podanej liczby to #{suma = suma + n}."
