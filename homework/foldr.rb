# Napisz metodę foldr , która pobierze pewną początkową wartość accumulator oraz tablicę, a
# następnie dla każdego elementu pobranej tablicy wywoła przekazany blok przekazując do
# niego aktualną wartość akumulatora oraz element. Wartość zwróconą przez blok należy
# przypisać do akumulatora, a na końcu zwrócić.

def foldr(acc, array)
  array.reverse.each { |elem| acc = elem - acc }
  acc
end

puts foldr(0, [3, 4, 65, 9])
puts foldr(7, [5, 8, 54, 7])
