# 5. Algorytm, który wczytuje dystans (w km) do pokonania i wyliczający zużycie paliwa (w l) i koszt (w zł) przejechania go. Załóż, że samochód spala 6.5 litra benzyny na 100 km. 1 litr benzyny kosztuje 4.30zł. Np. dla dystansu 150km algorytm wypisze "Zużycie paliwa: 9.75l" oraz "Koszt: 41,925zł".

puts "Podaj ilość kilometrów:"
kilometr = gets.to_i

paliwo = (kilometr * 6.5) / 100
kwota = paliwo * 4.30 
puts "Zużycie paliwa: #{paliwo} l."
puts "Koszt #{kwota} zł."
