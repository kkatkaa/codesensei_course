# 12. Algorytm, który wczytuje liczbę i wypisuje "Liczba jest parzysta" jeśli podana liczba jest parzysta lub "Liczba jest nieparzysta" jeśli podana liczba jest nieparzysta (do sprawdzenia parzystości liczby wykorzystaj działanie a % b zwracający resztę z dzielenia liczby a przez b).

puts "Podaj liczbę:"
number = gets.to_i

if number % 2 == 0
  puts "Liczba jest parzysta."
else
  puts "Liczba jest nieparzysta."
end
