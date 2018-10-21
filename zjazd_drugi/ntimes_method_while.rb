def ntimes(n)
  i = 0

  while i < n
    yield
    i += 1
  end
end

ntimes(2) { puts "Hi" }

puts
ntimes(10) { puts "Hi" }
