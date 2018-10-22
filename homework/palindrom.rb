#Palindrom – wyrażenie brzmiące tak samo czytane od lewej do prawej i od prawej do
# lewej. Przykładem palindromu jest: “Kobyła ma mały bok”.
# Napisz funkcję palindrome? , która otrzymuje ciąg znaków i zwraca wartość logiczną
# ( true / false ) w zależnośći czy dany ciąg jest palindromem.

def palindrome?(input)
  normalize_input = input.downcase.split.join
  normalize_input == normalize_input.reverse
end
puts palindrome?("Kobyła ma mały bok")
