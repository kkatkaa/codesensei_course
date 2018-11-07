# Zdefiniuj klasy Dog , Cat , Duck , Goose , każda z tych klas powinna dziedziczyć po klasie
# Animal , która posiada pustą metodę give_sound .
# Dla każdej z klas nadpisz metodę bazową give_sound , odpowiednio dla dźwięku
# poszczególnych zwierząt, przykłądowo dla psa wypisz 'woof! woof!' .
# Zdefiniuj klase Farm , która przyjmuje w metodzie 'initialize' tablicę obiektów Animals .
# Stwórz w klasie Farm metodę give_sounds , która wywołuje give_sound dla każdego obiektu z
# tablicy.

class Farm
  def initialize(animals_array, give_sound)
    @animals_array = animals_array
    @give_sound = give_sound
  end
  def give_sounds
    @animals_array.each {|a| puts "Animal says #{a.give_sound}"}
  end
end

class Animal
  def give_sound
  end
end

class Dog < Animal
  def give_sound
    "woof! woof!"
  end
end

class Cat < Animal
  def give_sound
    "meow! meow!"
  end
end

class Duck < Animal
  def give_sound
    "qwack! qwack!"
  end
end

class Goose < Animal
  def give_sound
    "honk! honk!"
  end
end

dog = Dog.new
dog.give_sound
cat = Cat.new
cat.give_sound
duck = Duck.new
duck.give_sound
goose = Goose.new
goose.give_sound
farm = Farm.new([dog, cat, duck, goose], @give_sound)
farm.give_sounds
