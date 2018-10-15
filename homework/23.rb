# 23. Algorytm, który wczytuje od użytkownika liczby tak długo aż poda 0. Na końcu wypisuje sumę liczb ujemnych oraz sumę liczb dodatnich z tych, które zostały wczytane. Np. dla liczb 6, 8, -2, 1, -3, 0 wypisze "Suma dodatnich: 15" i "Suma ujemnych: -5".

puts "Zgadnij liczbę:"
n = gets.to_i

suma_liczb_dodatnich = 0
suma_liczb_ujemnych = 0

until  n == 0
  if n > 0
    suma_liczb_dodatnich = suma_liczb_dodatnich + n
  else
    suma_liczb_ujemnych = suma_liczb_ujemnych + n
  end
  puts "Zgadnij jeszcze raz:"
  n = gets.to_i
end

if suma_liczb_dodatnich > 0
  puts "Suma liczb dodatnich to: #{suma_liczb_dodatnich}."
end

if suma_liczb_ujemnych < 0
  puts "Suma liczb ujemnych to #{suma_liczb_ujemnych}."
end
