#Cwiczenia na klasach

class CoffeeMachine
  def grind_grains
    puts "Grinding grains"
  end
  def add_milk
  puts "Adding milk"
  end
  def make_coffee
   self.grind_grains
   self.add_milk
   puts "Making coffee"
  end
end
coffee = CoffeeMachine.new
coffee.make_coffee

class CoffeeMachine
  def self.company_name
    "Foo company"
  end
end
puts CoffeeMachine.company_name

class CoffeeMachine
  def self.show
    self
  end
end
puts CoffeeMachine.show

class CoffeeMachine2
  def make_coffee
    grind_grains
    puts "Making coffee"
  end
  # private  #private method
  def grind_grains
    puts "Grinding grains"
  end
end
puts coffee_machine = CoffeeMachine2.new
puts coffee_machine.make_coffee
# puts coffee_machine.grind_grains #private method (NoMethodError)

class Book
  def initialize
    @number_of_pages = 700
    puts "Number of pages: #{@number_of_pages}"
    @title = "Harry Potter"
    puts "The title is: #{@title}."
  end
  def number_of_pages
    @number_of_pages
  end
  def title
    @title
  end
end
pages = Book.new
puts pages.number_of_pages
harry_potter = Book.new
puts harry_potter.title

class Wallet
  def balance=(balance) #setter
    @balance = balance
  end
  def balance  #getter
    @balance
  end
end
puts wallet = Wallet.new
puts wallet.balance = 10 #setter
puts wallet.balance  #getter

class Wallet2
  attr_writer :balance  #setter
  attr_reader :balance  #getter
  attr_accessor :colour, :material #both getter and setter
end

puts john_wallet = Wallet2.new
john_wallet.balance = 100  #setter
puts john_wallet.balance   #getter
john_wallet.colour = "black" #accessor
john_wallet.material = "leather" #accessor
puts john_wallet.colour  #accessor
puts john_wallet.material  #accessor
puts jim_wallet = Wallet2.new
jim_wallet.balance = 200
puts jim_wallet.balance
jim_wallet.colour = "blue"
puts jim_wallet.colour
jim_wallet.material = "jeans"
puts jim_wallet.material

class Bottle
  def initialize
    self.fill
  end
  def fill
    @water = 100
  end
  protected
  def drink
    @water -= 10 unless @water.zero?
  end
end
puts bottle = Bottle.new
puts bottle.fill

class Lamp
  def turn_off
    puts "Going dark..."
  end
  def turn_on
    puts "Iluminating..."
  end
end

class BrokenLamp < Lamp
  def turn_on
    puts "Oh no..."
  end
end

class MusicLamp < Lamp
  def turn_on
    super
    puts "Playing music"
  end
end

lamp = Lamp.new
puts lamp.turn_off
puts lamp.turn_on
broken_lamp = BrokenLamp.new
puts broken_lamp.turn_on
music_lamp = MusicLamp.new
puts music_lamp.turn_on

class Speaker
  def play(track_name)
    puts "Playing: #{track_name}"
  end
end

class BluetoothSpeaker < Speaker
  def play(track_name)
    puts "Streaming..."
  super ("Locked Out Of Heaven") #own argument
  end
end
puts bluetooth = BluetoothSpeaker.new.play("Cake By The Ocean")
