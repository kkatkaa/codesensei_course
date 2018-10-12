# Ciąg Fibonnaciego to taki ciąg w którym dwa pierwsze elementy mają wartość
# odpowiednio 0 i 1 a każdy inny element jest sumą dwóch poprzednich.
# Zatem kilka pierwszych elementów tego ciągu to: 0, 1, 1, 2, 3, 5, 8, 13.
# # Napisz program, który wypisze N pierwszych elementów tego ciągu, gdzie N jest
# parametrem przekazanym do tego programu.

puts "Podaj liczbę:"
n = gets.to_i

a, b = 0, 1

while b <= n
   puts a,b
   a=b+a
   b=b+a
end
