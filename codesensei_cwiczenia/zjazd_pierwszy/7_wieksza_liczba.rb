puts "Podaj pierwszą liczbę:"
puts number1 = gets.to_i
puts "Podaj drugą liczbę:"
puts number2 = gets.to_i

if number1>number2
  puts "Większa liczba to: #{number1}."

elsif number1<number2
  puts "Większa liczba to: #{number2}."

else puts "Liczby #{number1} i #{number2} są równe."

end
