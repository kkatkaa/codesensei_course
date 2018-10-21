# Stwórz własną metodę, która ruruchamia blok wprowadzony przez programistę

def my_block_method
  puts  "Before yield"
  yield_result = yield
  puts "After yield"

  puts "Yeld output"
  puts yield_result
end

puts "Run it!"

my_block_method do
  puts "Hellow from block"
end

my_block_method do
  puts "Another hello from block"
  :result
end

my_block_method do
  10
end
