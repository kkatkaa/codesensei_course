# 10. Algorytm wczytujący 3 liczby i sprawdzający czy są one ułożone w kolejności rosnącej (każda kolejna musi być większa od poprzedniej). Jeśli tak to wypisuje "Ciąg jest rosnący", w przeciwnym przypadku "Ciąg nie jest rosnący".

puts "Podaj pierwszą liczbę:"
number1 = gets.to_i
puts "Podaj drugą liczbę:"
number2 = gets.to_i
puts "Podaj trzecią liczbę:"
number3 = gets.to_i

if number1 < number2 && number1  > number3
  puts "Ciąg jest rosnący."
else
  puts "Ciąg nie jest rosnący."
end
