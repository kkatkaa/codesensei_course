# Wykorzystując funkcję leap_year? z zadania ‘Rok przestępny’ napisz funkcję ‘leap_years’,
# która otrzymuje tablicę liczb całkowitych, każda liczba reprezentuje rok i zwraca tablicę
# tylko z liczbami reprezentującymi rok przestępny.

def leap_years (years)
  leap_years_array = []
  years.each do |year|
    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
      leap_years_array << year
    end
  end
  leap_years_array
end

puts leap_years([2011, 2012, 2015, 2016, 2018]) #=> [2012, 2016]
puts leap_years((2000..2100).to_a) 
#=> [2000, 2004, 2008, 2012, 2016, 2020, 2024, 2028, 2032, 2036, 2040, 2044, 2048, 2052, 2056, 2060...)
