# Napisz metodę initials , która wypisuje inicjały osoby na podstawie jej pełnego imienia.
# Wszystkie znaki inicjałów powinny być pisane z dużej litery.

def initials(names)
  array = names.split
  array.each do |first_letter|
    initials = first_letter[0]
    print initials.upcase
  end
  print"\n"
  names
end

puts initials('Jan Kozlowski') #=> 'JK'
puts initials('Jan Krzysztof Rakoczy') #=> 'JKR'
puts initials('marcin nowak') #=> 'MN'
