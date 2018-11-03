class Calculator
  def initialize(name)
    @name = name
    @result = 0
    @history = []
  end

  def name
    @name
  end

  def result
    @result
  end

  def add(number)
    @result = @result + number
    append_to_history("add", number)
    @result
  end

  def subtract(number)
    @result = @result - number
    append_to_history("subtract", number)
    @result
  end

  def multiply(number)
    @result = @result * number
    append_to_history("multiply", number)

  end

  def divide(number)
    @result = @result / number
    append_to_history("divide", number)
  end

  def clear
    @result = 0
    append_to_history("clear")
  end

  def change_sign
    @result = @result * -1
    append_to_history("change_sign")
  end

  def print_history
    puts @history
  end

  private

  def append_to_history(operation, argument = nil)
    @history << "#{operation} #{argument} (result: #{@result})"
  end
end

calculator = Calculator.new("CASIO")
puts calculator.name # prints CASIO
calculator.add(2)
calculator.add(3)
puts calculator.result # prints 5
calculator.add(10)
puts calculator.result # prints 15
calculator.clear # set result to 0
puts calculator.result # prints 0
calculator.subtract(20)
puts calculator.result # prints -20
calculator.multiply(3)
puts calculator.result # prints -60
calculator.divide(4)
puts calculator.result # prints -15
calculator.change_sign
puts calculator.result # prints 15
calculator.print_history # prints entire history
