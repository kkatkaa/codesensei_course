# Załączony plik products.csv (format CSV) zawiera nazwy produktów, ich ceny oraz
# wagę. Napisz program, który:
# • wczyta produkty oraz ich ceny z pliku products.csv
# • umożliwi wyszukanie produktu po jego nazwie
# umożliwi wyświetlenie produktów tańszych/droższych od podanej w argumencie
# ceny
# • umożliwi konwersję cen produktów do innej waluty po zadanym w argumencie
# wywołania kursie, dane po konwersji zapisze do pliku o zadanej w argumencie
# wywołania nazwie.
require "csv"
require "./product.rb"
require "./products_list.rb"

products_list = ProductsList.new

if ARGV[0] == "-f"
  product = products_list.find_product(ARGV[1])
  puts "#{product.name}: #{product.price} zł"
else
  puts "USAGE: ruby products.rb FUNCTION ARGUMENT"
end
