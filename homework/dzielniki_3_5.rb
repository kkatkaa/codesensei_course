# Napisz metodę, która dla podanego argument n znajdzie wszystkie liczby całkowite w
# przedziale od 0 do n, które są podzielne przez 3 lub 5 i zwróci sumę tych liczb.

def multiples(n)
  i = 1
  sum = 0
  while i <= n
    if i % 3 == 0 || i % 5 == 0
      sum += i 
    end
      i+= 1
  end
  sum
end

puts multiples(10) #=> 33
puts multiples(20) #=> 98
