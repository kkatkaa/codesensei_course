#konwertowanie złotowek na euro
def convert_to_euro(pln, kurs_euro = 3.12)
  pln * kurs_euro
end

puts convert_to_euro(2)
puts convert_to_euro(2, 4.40)
