# 23. Algorytm, który wczytuje od użytkownika liczby tak długo aż poda 0. Na końcu wypisuje sumę liczb ujemnych oraz sumę liczb dodatnich z tych, które zostały wczytane. Np. dla liczb 6, 8, -2, 1, -3, 0 wypisze "Suma dodatnich: 15" i "Suma ujemnych: -5".

puts "Zgadnij liczbę:"
n = gets.to_i

dodatnia = 0
ujemna = 0

until  n == 0
  if n > 0
    dodatnia = dodatnia + n
  else
    ujemna = ujemna + n
  end
  puts "Zgadnij jeszcze raz:"
  n = gets.to_i
end

if dodatnia > 0
  puts "Suma liczb dodatnich to: #{dodatnia}."
end

if ujemna < 0
  puts "Suma liczb ujemnych to #{ujemna}."
end 
