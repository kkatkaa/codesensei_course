# Zasada komplementarności DNA mówi, że znając sekwencję pojedyńczego łańcucha
# DNA możemy wywnioskować sekwencję jego sąsiedniej nici.
# Wynika to z faktu, iż zasady azotowe, z których DNA jest zbudowane łączą się w pary
# zawsze w ten sam sposób, to znaczy Adenina (A) z Tyminą (T), a Cytozyna (C) z Guaniną
# (G).
# Napisz funckję, która przyjmie ciąg znaków reprezentujący sekwencję DNA i zwróci
# sekwencję komplementarną.

def complementary_DNA(string)
  array = string.chars
  array.each do |element|
    if element == "A"
      element.replace("T")
    elsif element == "T"
      element.replace("A")
    elsif element == "G"
      element.replace("C")
    elsif element == "C"
      element.replace("G")
    end
  end
  array.join
end

puts complementary_DNA("ATTA")#=> "TAAT"
puts complementary_DNA("CGGC")#=> "GCCG"
puts complementary_DNA("ACGTTAGTTA") #=> "TGCAATCAAT"
