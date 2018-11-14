# Napisz program, który ma klasę Figura oraz dziedziczące z niej klasy: Koło, Prostokąt,
# Kwadrat oraz Trapez. Każda z tych klas powinna posiadać odpowiednio dopasowany do
# reprezentowanej figury konstruktor (przyjmujący jako parametry niezbędne dane do
# wykonania obliczeń) oraz bezparametrowe metody do obliczania pola oraz obwodu.
# Zadbaj o jak najmniejszą ilość powtórzonego kodu. Oblicz pola oraz obwody:
#
# -kół o promieniach: 5cm, 2.25cm, 100m, 1.33km
# -prostokątów o bokach: 5cm i 2cm, 3.33cm i 4.20cm, 124m i 33m, 1.2km i 2.2km
# -kwadratów o boku: 3cm, 4.45cm, 12m, 3.66km
# -trapezów o podstawach i wysokości: 2.34cm x 6.66cm i 2cm, 113m x 33m i 16m.

class Figura
end

class Kolo < Figura
  def pole_kola(r)
    pole_kola = Math::PI * r * r
  end
  def obwod_kola(r)
    obwod_kola = 2 * Math::PI * r
  end
end
kolo1 = Kolo.new
puts "Pole koła wynosi: #{kolo1.pole_kola(5)} cm2, a jego obwód: #{kolo1.obwod_kola(5)} cm."
kolo2 = Kolo.new
puts  "Pole koła wynosi: #{kolo2.pole_kola(2.25)} cm2, a jego obwód #{kolo2.obwod_kola(2.25)} cm."
kolo3 = Kolo.new
puts  "Pole koła wynosi: #{kolo3.pole_kola(100)} m2, a jego obwód #{kolo3.obwod_kola(100)} m."
kolo4 = Kolo.new
puts  "Pole koła wynosi: #{kolo4.pole_kola(1.33)} km2, a jego obwód #{kolo4.obwod_kola(1.33)} km."

class Prostokat < Figura
  def pole_prostokata(a,b)
    pole_prostokata = a * b
  end
  def obwod_prostokata(a,b)
    obwod_prostokata = (2*a) + (2*b)
  end
end
prostokat1 = Prostokat.new
puts "Pole prostokata wynosi: #{prostokat1.pole_prostokata(5,2)} cm2, a jego obwód: #{prostokat1.obwod_prostokata(5,2)} cm."
prostokat2 = Prostokat.new
puts "Pole prostokata wynosi: #{prostokat2.pole_prostokata(3.33,4.20)} cm2, a jego obwód: #{prostokat2.obwod_prostokata(3.33,4.20)} cm."
prostokat3 = Prostokat.new
puts "Pole prostokata wynosi: #{prostokat3.pole_prostokata(124,33)} m2, a jego obwód: #{prostokat3.obwod_prostokata(124,33)} m."
prostokat4 = Prostokat.new
puts "Pole prostokata wynosi: #{prostokat4.pole_prostokata(1.2,2.2)} km2, a jego obwód: #{prostokat4.obwod_prostokata(1.2,2.2)} km."

class Kwadrat < Figura
  def pole_kwadratu(a)
    pole_kwadratu = a * a
  end
  def obwod_kwadratu(a)
    obwod_kwadratu = a * 4
  end
end
kwadrat1 = Kwadrat.new
puts "Pole kwadratu wynosi: #{kwadrat1.pole_kwadratu(3)} cm2, a jego obwód: #{kwadrat1.obwod_kwadratu(3)} cm."
kwadrat2 = Kwadrat.new
puts "Pole kwadratu wynosi: #{kwadrat2.pole_kwadratu(4.45)} cm2, a jego obwód: #{kwadrat2.obwod_kwadratu(4.45)} cm."
kwadrat3 = Kwadrat.new
puts "Pole kwadratu wynosi: #{kwadrat3.pole_kwadratu(12)} m2, a jego obwód: #{kwadrat3.obwod_kwadratu(12)} m."
kwadrat4 = Kwadrat.new
puts "Pole kwadratu wynosi: #{kwadrat4.pole_kwadratu(3.66)} km2, a jego obwód: #{kwadrat4.obwod_kwadratu(3.66)} km."


class Trapez < Figura
  def pole_trapezu(a,b,h)
    pole_trapezu = ((a + b)/2) * h
  end
  def obwod_trapezu(a,b,h)
    # c = (b-h)/2
    # h**2 + c**2 = przeciwprostokatna
    # d = Math.sqr(przecowprostokatna)
    obwod_trapezu = a + b + (Math.sqrt(h**2 + ((b-h)/2)**2))*2
  end
end

trapez1 = Trapez.new
puts "Pole trapezu wynosi: #{trapez1.pole_trapezu(2.34,6.66,2)} cm2, a jego obwód: #{trapez1.obwod_trapezu(2.34,6.66,2)} cm."
trapez2 = Trapez.new
puts "Pole trapezu wynosi: #{trapez2.pole_trapezu(113,33,16)} km2, a jego obwód: #{trapez2.obwod_trapezu(2.34,6.66,2)} km."
