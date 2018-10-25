# Zaimplementuj funkcję, która wypisze, który z graczy wygrywa w grze papier, kamień,
# nożyce. Funkcja powinna przyjmować dwa argumenty odpowiadające wyborom graczy i
# działać w następujący sposób:

def rps(choice_1, choice_2)

  r = "rock"
  p = "paper"
  s = "scissors"

  if choice_1 == s && choice_2 == p || choice_1 == p && choice_2 == r || choice_1 == r && choice_2 == s
    puts "The first player wins"
  elsif choice_1 == p && choice_2 == s || choice_1 == r && choice_2 == p || choice_1 == s && choice_2 == r
    puts "The second player wins"
  elsif choice_1 == choice_2
    puts "Draw"
  end
  puts "The first player chose #{choice_1}"
  puts "The second player chose #{choice_2}"
  
end

puts rps('scissors', 'paper')#=> 'Gracz 1 wygrywa'
puts rps('paper', 'rock')
puts rps('paper', 'scissors')
puts rps('scissors', 'rock')
puts rps('rock', 'paper')#=> 'Gracz 2 wygrywa'
puts rps('scissors', 'scissors') #=> 'Remis'
