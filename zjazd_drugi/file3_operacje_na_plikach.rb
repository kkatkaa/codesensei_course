data = File.open("secret_data.txt", "w+") do |f|
  f.puts 42
  f.puts 444444
  10.times do |i|
    f.puts i
  end
end
