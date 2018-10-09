#3. Algorytm wczytujący numer miesiąca (1 to styczeń, 2 luty, ..., 12 grudzień) i wypisujący liczbę dni w podanym miesiącu (załóż że luty ma zawsze 28 dni).

puts "Podaj numer miesiąca:"
month = gets.to_i

if month == 1
  puts "Miesiąc #{month} ma 31 dni."
elsif month == 3
  puts "Miesiąc #{month} ma 31 dni."
elsif month == 5
  puts "Miesiąc #{month} ma 31 dni."
elsif month == 7
  puts "Miesiąc #{month} ma 31 dni."
elsif month == 8
  puts "Miesiąc #{month} ma 31 dni."
elsif month == 10
  puts "Miesiąc #{month} ma 31 dni."
elsif month == 12
  puts "Miesiąc #{month} ma 31 dni."
elsif month == 4
  puts "Miesiąc #{month} ma 30 dni."
elsif month == 6
  puts "Miesiąc #{month} ma 30 dni."
elsif month == 9
  puts "Miesiąc #{month} ma 30 dni."
elsif month == 11
  puts "Miesiąc #{month} ma 30 dni."
elsif month == 2
  puts "Miesiąc #{month} to luty i jest wyjątkowy, ponieważ ma 28 dni."
else
  puts "Error!"
end
