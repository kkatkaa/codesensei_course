class Food
  def eat
    puts "Munch, munch, very tasty"
  end
end

class Orange < Food
  def blend
    puts "Blending..."
  end
end

class Dinner
  def cook
    puts "Dinner in progress..."
  end
end

orange = Orange.new
orange.blend
orange.eat
