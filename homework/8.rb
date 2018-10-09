# 8. Algorytm, który wczytuje 3 liczby i wypisuje największą z nich (np. dla liczb 6, 8, 3 wypisze 8, dla 9, 3, 1 wypisze 9, a dla liczb 3, 5, 5 wypisze 5).

puts "Podaj pierwszą liczbę:"
number1 = gets.to_i
puts "Podaj drugą liczbę:"
number2 = gets.to_i
puts "Podaj trzecią liczbę:"
number3 = gets.to_i

if number1 > number2 && number1 > number3
  puts "#{number1} jest największy."
elsif number2 > number1 && number2 > number3
  puts "#{number2} jest największy."
else
  puts "#{number3} jest największy."
end
