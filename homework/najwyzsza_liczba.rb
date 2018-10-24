# Napisz funkcję, ktora przyjmie liczbę całkowitą i pozamienia jej cyfry miejscami w taki
# sposób, aby utworzyć jak najwyższą liczbę.

def highest_number(value)
  array = value.to_s.split(//)
  array = array.sort! {|x,y| y <=> x }
  array.join
end

puts highest_number(132) #=> 321
puts highest_number(1464) #=> 6441
puts highest_number(165423) #=> 654321
