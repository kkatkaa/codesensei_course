# 4. Algorytm wczytujący ilość pieniędzy w $, kurs kupna dolara w zł i zamieniający podaną wartość w $ na zł. Np. dla 20$ i kursu 3.60zł algorytm wypisze 72zł.

puts "Podaj kwotę w $:"
dolar = gets.to_i

zloty = dolar * 3.60
puts "Podana wartość to #{zloty} zł."
