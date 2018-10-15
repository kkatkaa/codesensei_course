#Losowanie

number = rand(100)
# puts number

puts "Podaj cyfrę od 0 do 99:"
loop do

i = gets.to_i

  if i == number
    puts "Zgadłeś, gratulacje!"
    break
  elsif number > i
    puts  "Więcej"
  else
    puts "Mniej"
  end

end
