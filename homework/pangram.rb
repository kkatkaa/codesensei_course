# Pangram to zdanie, w którym przynajmniej raz pojawia się każda litera alfabetu.
# Napisz metodę, która sprawdzi czy podany ciąg znaków jest pangramem dla języka
# polskiego.

def pangram?(string)
  string.include?("ą") && string.include?("ć") && string.include?("ę") && string.include?("ł") && string.include?("ń") && string.include?("ó") && string.include?("ś") && string.include?("ź") && string.include?("ż")
end

puts pangram?('Dość błazeństw, żrą mój pęk luźnych fig') #=> true
puts pangram?('Losowy ciąg znaków')#=> false
