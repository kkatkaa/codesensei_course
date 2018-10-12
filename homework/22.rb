#22. Algorytm, który wczytuje od użytkownika liczby tak długo aż poda 0. Na końcu wypisuje komunikat "Wystąpiła liczba ujemna" jeśli chociaż raz podana została liczba ujemna oraz komunikat "Wystąpiła liczba dodatnia" jeśli chociaz raz podana została liczba dodatnia.

puts "Zgadnij liczbę:"
n = gets.to_i

dodatnia = 0
ujemna = 0

  until  n == 0
    if n > 0
      dodatnia = n
    else
      ujemna = n
    end
    puts "Zgadnij jeszcze raz:"
    n = gets.to_i
  end

  if
    dodatnia > 0
    puts "Wystąpiła liczba dodatnia."
  end

  if
    ujemna < 0
    puts "Wystąpiła liczba ujemna."
  end
