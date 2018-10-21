#Napisz własną metodę my_loop
def loop_method
  while true
    yield
  end 
end

loop_method do
  puts "Hello"
end
