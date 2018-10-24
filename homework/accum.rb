# Napisz funkcję accum , która działa w następujący sposób:

def accum(string)
  array = string.chars
  new_array = []
  array.each_with_index do |element, index|
  new_string = element * (index+1)
  new_array << new_string.capitalize
  end
  puts new_array.join("-")
end

accum("abcd")#=> "A-Bb-Ccc-Dddd"
accum("RqaEzty")#=> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt")#=> "C-Ww-Aaa-Tttt"
