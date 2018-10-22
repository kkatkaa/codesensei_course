# Napisz funkcję, która dokona konwersji liczby w zapisie arabskim na liczbę w zapisie
# rzymskim.
# Funkcja powinna byc w stanie skonwertować liczby od 1 do 3000.

DIGITS_TO_ROMAN_SYMBOLS = { 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI",
  7 => "VII", 8 => "VIII", 9 => "IX", 10 => "X", 20 => "XX", 30 => "XXX", 40 => "XL", 50 => "L", 60 => "LX", 70 => "LXX", 80 => "LXXX", 90 => "XC", 100 => "C", 200 => "CC", 300 => "CCC", 400 => "CD", 500 => "D", 600 => "DC", 700 => "DCC", 800 => "DCCC", 900 => "CM", 1000 => "M", 1500 => "MD", 2000 => "MM", 3000 => "MMM" }

def to_roman(number)
  units = number % 10
  tens = (number%100) - units
  hundreds = (number/100) * 100

  result = ""
  result += DIGITS_TO_ROMAN_SYMBOLS[hundreds] if hundreds > 99
  result += DIGITS_TO_ROMAN_SYMBOLS[tens] if tens > 9
  result += DIGITS_TO_ROMAN_SYMBOLS[units] if units > 0

  result
end

puts to_roman(19)
puts to_roman(5) #=> 'V'
puts to_roman(37) #=> 'XXXVII'
puts to_roman(924) #=> 'CMXXIV'
