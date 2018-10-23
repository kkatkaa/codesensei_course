# Napisz funkcję, która znajdzie i zwróci środkowy znak w stringu. Jeśli długość stringa
# jest liczbą parzystą zwróć dwa środkowe znaki.


def middle(string)
  i = (string.length - 1) / 2
  string[i..-i.succ]
end

puts middle("abc")#=> "b"
puts middle("middle") #=> "dd"
puts middle("tesTing") #=> "T"
