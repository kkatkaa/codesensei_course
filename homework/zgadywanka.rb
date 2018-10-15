# Napisz program, który będzie grał w zgadywanki.
# Użytkownik aplikacji musi wymyślić liczbę od 0 do 99 włącznie, a następnie udzielać
# odpowiedzi komputerowi, gdy ten będzie przedstawiał swoje próby. Użytkownik
# powinien wpisać “more”, jeśli komputer zgadnie zbyt małą liczbę, “less”, gdy zbyt dużą
# # oraz “ok”, gdy uda mu się trafić1.

puts "Zgadnij jaka to liczba w zakresie od 0 do 99:"
i = gets.to_i

number = 0

until i == number
  number = rand(100)
  puts number
  if number > i
    answer = gets.chomp
  elsif number < i
    answer = gets.chomp
  end
end

puts answer = gets.chomp
