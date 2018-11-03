class Car
end

class Cookie
end

class CoffeeMachine
  def make_coffee
    puts "Making coffee now"
  end
  def add_milk
   puts "Pouring milk"
  end
  def self.show
    self
  end
  def grind_grains
    puts "Grinding grains"
  end
  def make_coffee
    self.grind_grains
    puts "Making coffee"
  end
  def self.company_name
    "Foo company"
  end
end

class Dog
  def bark
   puts "The dog is barking"
  end
  def bring(item)
    puts "Bring me #{item}."
  end
  def initialize
    @name = "Reksio"
    puts "Bark, Bark my name is: #{@name}."
  end
  def name
    @name
  end
  def name=(value)
    @name = value
  end
end

Dog.new.bring('newspaper')
dog_name = Dog.new

class Cat
  def meow
   puts "The cat is meowing"
  end
end

car = Car.new
volkswagen = Car.new
audi = Car.new
porshe = Car.new

cookie = Cookie.new
oreo = Cookie.new
peanut_butter_cookies = Cookie.new
gingerbreads = Cookie.new

coffeemachine = CoffeeMachine.new
bob_coffeemachine = CoffeeMachine.new
steven_coffeemachine = CoffeeMachine.new
mia_coffeemachine = CoffeeMachine.new

dog = Dog.new
azor = Dog.new
burek = Dog.new
szarik = Dog.new

cat = Cat.new
mruczek = Cat.new
filemon = Cat.new
miauczek = Cat.new
