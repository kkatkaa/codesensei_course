# Wygeneruj 100-elementową tablicę losowych liczb z zakresu od 0 do 99. Następnie korzystając z
# metody Array#group_by , stwórz hash, gdzie kluczem będzie reszta z dzielenia elementu przez
# 10.

randomness = Array.new(100) { rand(100) }
wynik = randomness.group_by { |i| i%10 }
dlugosc = wynik.transform_values { |i| i.length}
puts dlugosc 
