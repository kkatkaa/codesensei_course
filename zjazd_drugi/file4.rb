#zmien plik tak aby dopisywal to co wprowadzi uzytkownik, zatrzymaj program po wprowadzeniu słowa "stop"

data = File.open("secret_data.txt", "w+") do |f|

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
   f.puts "Imię #{name}, wprowadzono #{count} razy"
 end
end
