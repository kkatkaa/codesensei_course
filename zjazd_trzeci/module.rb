class Player
  include Comparable
  attr_reader :score
  def initialize(score)
    @score = score
  end
  def <=>(other)
    self.score <=> other.score
  end
end

puts p1 = Player.new(10)
puts p2 = Player.new(20)
puts p1 < p2
#=> true
