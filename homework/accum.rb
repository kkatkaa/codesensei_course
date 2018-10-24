# Napisz funkcję accum , która działa w następujący sposób:

def accum(string)
  array = string.chars
  new_array = []
  array.each_with_index do |element, index|
  new_string = element * (index+1)
  new_array << new_string.capitalize
  end
  new_array.join("-")
end

puts accum("abcd")#=> "A-Bb-Ccc-Dddd"
puts accum("RqaEzty")#=> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
puts accum("cwAt")#=> "C-Ww-Aaa-Tttt"
