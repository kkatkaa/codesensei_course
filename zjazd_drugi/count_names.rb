stats = {}
loop do
  puts "Podaj Imię:"
  name = gets.chomp

  break if name == "stop"

stats[name] = stats[name].to_i + 1
  end

puts "Statystyki imion:"
stats.each do |name, count|
  puts "Imię #{name}, wprowadzono #{count} razy"
end
