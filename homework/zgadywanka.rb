# Napisz program, który będzie grał w zgadywanki.
# Użytkownik aplikacji musi wymyślić liczbę od 0 do 99 włącznie, a następnie udzielać
# odpowiedzi komputerowi, gdy ten będzie przedstawiał swoje próby. Użytkownik
# powinien wpisać “more”, jeśli komputer zgadnie zbyt małą liczbę, “less”, gdy zbyt dużą
# # oraz “ok”, gdy uda mu się trafić1.

puts "Zgadnij jaka to liczba w zakresie od 0 do 99:"
my_number = gets.to_i

while my_number > 99
    puts "Zły zakres! Podaj liczbę w zakresie od 0 do 99."
    my_number = gets.to_i
end

computer_number = rand(100)
puts computer_number

until my_number == computer_number
  if computer_number > my_number
    answer = gets.chomp
    # puts "less than #{computer_number}"
    computer_number = rand(my_number..computer_number)
    puts computer_number
  elsif computer_number < my_number
    answer = gets.chomp
    # puts "more than #{computer_number}"
    computer_number = rand(computer_number..my_number)
    puts computer_number
  end
end

# puts "OK"
puts answer = gets.chomp
