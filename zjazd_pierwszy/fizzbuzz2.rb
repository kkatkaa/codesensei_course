
i = 1

while  i <= 100
  output = ""
  output += "Fizz" if i % 3 == 0
  output += "Buzz" if i % 5 == 0
  output = i if output == ""

puts output
i += 1
end
