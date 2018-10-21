# Napisz metodę konwertującą cyfry na słowa

def digit_to_word(digit)

  if digit == 0
    "zero"
  elsif digit == 1
    "one"
  elsif digit == 2
    "two"
  elsif digit == 3
    "three"
  elsif digit == 4
    "four"
  elsif digit == 5
    "five"
  elsif digit == 6
    "six"
  elsif digit == 7
    "seven"
  elsif digit == 8
    "eight"
  elsif digit == 9
    "nine"
  end
end

def number_in_words(number)
  words = ""

  while number != 0
    digit = number % 10
      word =  digit_to_word(digit)
    words = word + words
      number = number/10
  end
    words 
end

puts digit_to_word(1)
puts number_in_words(123)
