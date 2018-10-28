# Kod Morse’a – stworzony w 1838 przez Samuela Morse’a i Alfreda Vaila sposób
# reprezentacji alfabetu, cyfr i znaków specjalnych za pomocą dźwięków, błysków światła,
# impulsów elektrycznych lub znaków popularnie zwanych kreską i kropką.(Wikipedia)
# Wszystkie znaki reprezentowane są przez kilkuelementowe serie sygnałów – krótkich
# (kropek) i długich (kresek).
# Przykładowo literę a kodujemy za pomocą “.-”.
# Zadanie polega na napisaniu funkcji decode_morse , która dla otrzymanego kodu, zwórci
# jego odszyfrowaną wersję.

MORSE_SYMBOLS_TO_LETTERS = { ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E", "..-." => "F", "- -." => "G", "...." => "H", ".." => "I", ".---" => "J", "-.-" => "K", ".-.." => "L", "--" => "M", "-." => "N", "---" => "O", ".--." => "P", "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T", "..-" =>"U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y", "--.." => "Z" }

def decode_morse(code)
  word = ""
  symbol_array = code.split
  symbol_array.each {|element| word += MORSE_SYMBOLS_TO_LETTERS[element] unless MORSE_SYMBOLS_TO_LETTERS[element].nil?}
  word
end

puts decode_morse('.... . .-.. .-.. --- .-- --- .-. .-.. -..')#=> "HELLOWORLD"
