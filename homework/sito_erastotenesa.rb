# Napisz program wyszukujący wszystkie liczby pierwsze z zadanego przedziału jako
# argumenty wywołania metodą Sita Eratostenesa

def sieve_of_eratosthenes(n)
  numbers = (2..n)
  array = numbers.to_a
  not_sieve = []
  sieve = []

  array.each_with_index do |a, index|
     next if not_sieve.include?(a)
   sieve << a
     ((sieve.last)..n).step(sieve.last).each_with_index do |b, index|
       next if index == 0 || b == sieve.last
       not_sieve << b
     end
   end
  sieve
end

puts sieve_of_eratosthenes(10)
