#Cwiczenia na klasach 
class Cat
  def meow
    puts "The cat is meowing." #puts is necessery
  end
  def self.food
    "Cats love to eat fishes."
  end
  def put_down(item:, place:)
    "Put #{item} #{place}"
  end
end
puts cat = Cat.new
puts felix = Cat.new
puts mruczek = Cat.new
cat.meow
puts Cat.food
puts Cat.new.put_down(item: "my cotton ball", place: "on the table!")

class Dog
  def bark
    puts "The dog is barking." #puts is necessery
  end
  def self.food
    "Dogs love to eat meat."
  end
  def bring(item)
    "Bring me #{item}."
  end
  def put_down(item:, place:)
    "Put #{item} #{place}!"
  end
end

puts dog = Dog.new
puts azor = Dog.new
puts ciapek = Dog.new
dog.bark
puts Dog.food
puts Dog.new.bring("newspaper")
puts Dog.new.bring("sock")
puts Dog.new.put_down(item: "my shoe", place: "to the shelf")

class Animal
  attr_writer :age   #setter
  attr_reader :age   #getter
  attr_accessor :weight #accessor (both getter and setter)
end
class Dog2 < Animal
  def initialize(name, breed)
    puts "Bark, Bark my name is: #{name}, my breed is: #{breed}."
  end
  attr_writer :age   #setter
  attr_reader :age   #getter
  attr_accessor :weight #accessor (both getter and setter)
end

class Duck < Animal

  def initialize(name, breed)
    puts "Qwack, qwack my name is: #{name}, my breed is: #{breed}."
  end
  attr_writer :age   #setter
  attr_reader :age   #getter
  attr_accessor :weight #accessor (both getter and setter)
end

dog = Dog2.new("Reksio", "Terrier")
dog.age = 7  #setter
puts "I am #{dog.age}." #getter
dog.weight = 15  #accessor
puts "My weight is #{dog.weight} kg."  #accessor

duck = Duck.new("Donald", "The Duck")
duck.age = 2  #setter
puts "I am #{duck.age}." #getter
duck.weight = 3  #accessor
puts "My weight is #{duck.weight} kg."  #accessor

class Cat2 < Animal
  def initialize
    @name = "Felix"
    @breed = "British"
    puts "Meow, Meow my name is: #{@name}, my breed is: #{@breed}."
  end
  def age=(age)  #setter
    @age = age
  end
  def name
    @name
  end
  def breed
   @breed
  end
  def age  #getter
    @age
  end
end
cat_name = Cat2.new
cat_breed = Cat2.new
cat_age = Cat2.new
puts cat_name.name
puts cat_breed.breed
puts cat_age.age = 5  #setter
puts cat_age.age  #getter

module Collar
  def pull
    puts "Pulling #{self}"
  end
end
module TrackingChip
  def get_tracking_id
    @tracking_id ||= rand(1000) #@tracking_id = @tracking_id || rand(1000)
  end
end

class Dog3
  include Collar
  include TrackingChip
end
puts collar = Dog3.new.pull
puts tracking_chip = Dog3.new.get_tracking_id
