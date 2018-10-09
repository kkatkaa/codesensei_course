# 6. Algorytm, który wczytuje 2 liczby, liczący ich sumę i różnicę i wypisujący komunikat "Suma większa od różnicy" jeśli suma jest większa, "Suma jest mniejsza od różnicy" jeśli suma jest mniejsza lub "Suma jest równa różnicy" jeśli obie są sobie równe.

puts "Podaj pierwszą liczbę:"
x = gets.to_i
puts "Podaj drugą liczbę:"
y = gets.to_i

if x+y > x-y
  puts "Suma większa od różnicy."
elsif x+y < x-y
  puts "Suma mniejsza od różnicy."
else
  puts " Obie są równe."
end 
