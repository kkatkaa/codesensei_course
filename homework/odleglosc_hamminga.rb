# Odległość Hamminga to “wprowadzona przez Richarda Hamminga miara odmienności
# dwóch ciągów o takiej samej długości, wyrażająca liczbę miejsc (pozycji), na których te
# dwa ciągi się różnią” (Wikipedia)
# czyli:
# • odległość Hamminga dla ciągów 'aaa' i 'aab' wynosi 1.
# • odległość Hamminga dla ciągów 'aaabbb' i 'abaaba' wynosi 3.
# Napisz funkcję, która jako argumenty przyjmie dwa stringi i zwróci ich odległość
# Hamminga. Jeśli podane stringi nie są tej samej długości niech zwróci nil .

def hamming_distance(value_1, value_2)
  array_1 = value_1.split('')
  array_2 = value_2.split('')
  distance_count = 0

  if array_1.size == array_2.size
    array_1.each_index do |index|
      distance_count += 1 if array_1.values_at(index) != array_2.values_at(index)
    end
  else
    return nil 
  end
  distance_count
end

puts hamming_distance('1234', '1235')#=>1
puts hamming_distance('GAGCCT', 'CATCGT')#=>3
puts hamming_distance('1234', '12345')#=> false
puts hamming_distance('123', 'foobar')#=> nil
