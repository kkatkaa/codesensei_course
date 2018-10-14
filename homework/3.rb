#3. Algorytm wczytujący numer miesiąca (1 to styczeń, 2 luty, ..., 12 grudzień) i wypisujący liczbę dni w podanym miesiącu (załóż że luty ma zawsze 28 dni).

puts "Podaj numer miesiąca:"
month = gets.to_i

if month == 1 || month == 3 ||  month == 5 ||  month == 7 ||  month == 8 ||  month == 10 ||  month == 12
  puts "Miesiąc #{month} ma 31 dni."
elsif month == 4 ||  month == 6 ||  month == 9 ||  month == 11
  puts "Miesiąc #{month} ma 30 dni."
elsif month == 2
  puts "Miesiąc #{month} to luty i jest wyjątkowy, ponieważ ma 28 dni."
else
  puts "Error!"
end
