# W supermarkecie ludzie ustawiają się w jedną długą kolejkę i proszeni są kolejno do
# wolnej kasy.
# Twoim zadaniem jest napisać funkcję queue_time , która przyjmuje:
# • tablicę liczb całkowitych - czasy obsługi poszczególnych klientów
# • liczbę całkowitą - ilość dostępnych kas. Funkcja powinna zwracać czas potrzebny na
# obsłużenie wszystkich klientów supermarketu.
# Pamiętaj że:
# - istnieje tylko jedna kolejka
# - kolejność klientów w kolejce nie zmienia się
# - pierwsza osoba w kolejce podchodzi do pierwszej wolnej kasy

def queue_time (time_array, cash_desk_number)
  cash_desk_array =  [0] * cash_desk_number
  time_array.each {|time| cash_desk_array [cash_desk_array.index (cash_desk_array.min)] += time}
  cash_desk_array.max
end

puts queue_time([5,3,4], 1)#=> 12
puts queue_time([10, 2, 3, 3], 2) #=> 10
puts queue_time([2, 3, 10], 2) #=> 12
