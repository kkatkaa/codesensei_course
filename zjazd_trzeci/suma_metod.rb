def method1(array)
  array.methods.count
end

puts "Tablica ma #{method1([2, 3, 5, 89])} metod."

def method2(integer)
  integer.methods.count
end

puts "Liczba ma #{method2(1)} metod."

def method3(string)
  string.methods.count
end

puts "Ciąg znaków ma #{method3("Hello World!")} metod."
