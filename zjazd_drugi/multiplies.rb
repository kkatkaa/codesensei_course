#Napisz metodę, która dla podanego argumentu n znajdzie wszysktie liczby całkowite w przedziale od 0 do n, które są podzielne przez 3 lub przez 5 i zwróci sumę tych liczb.

# multiplies(10) => 33
# multiplies(20) => 98

def multiplies(n)
# i = 1
# sum = 0
#   while i <= n
#     if i % 15 == 0
#       sum +=i
#     elsif  i % 5 == 0
#       sum +=i
#     elsif i % 3 == 0
#       sum+=i
#     end
#   i+=1
#   end
#   sum
# end

sum = 0
(0..n).each do |i|
  if i % 3 == 0 || i % 5 == 0
    sum += i
    end
  end
  sum
end

puts multiplies(10)
puts multiplies(20)
