# Napisz program będący prostym kalkulatorem.

puts "Choose operation:
1. Add numbers
2. Subtract numbers
3. Multiply numbers
4. Divide numbers
5. Quit"

puts "What is your choice?"
operation = gets.chomp

  if operation == "5"
    puts "Bye, bye!"
  else
    puts "Enter first number:"
    number1 = gets.to_i
    puts "Enter second number:"
    number2 = gets.to_i

      if operation == "1"
        result = number1 + number2
        puts "Your result is: #{result}."
      elsif operation == "2"
        result = number1 - number2
        puts "Your result is: #{result}."
      elsif
        operation == "3"
        result = number1 * number2
        puts "Your result is: #{result}."
      elsif
        operation == "4"
          while number2 == 0
            puts "You can't divided by zero, enter another number:"
            number2 = gets.to_i
          end
        result = number1 / number2
        puts "Your result is: #{result}."
      end
    end
