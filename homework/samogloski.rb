# Napisz funkcję obliczającą ilość samogłosek w podanym ciągu znaków. Jako samogłoski
# uznajemy: a, e, i, o, u oraz y.

def vowel_count(string)
   string.count("aeoui")
end

puts vowel_count("test")
puts vowel_count("foobar")
puts vowel_count("konstantynopolitanczykiewiczowna")
