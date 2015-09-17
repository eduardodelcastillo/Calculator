#calculator.rb

result = 0
operation = ""
operator = ""
num1 = 0
num2 = 0
quit_var = ""

def say(msg)
  puts "------ #{msg} ------"
end

class String
  def numeric?
    Float(self) != nil rescue false
  end
end

loop do
  loop do
    say("Please enter the first number (q to quit).")
    num1 = gets.chomp
    quit_var = num1
    if num1 == "q"
      break
    elsif !num1.numeric?
      say("Please enter a valid number.") 
    else
      break
    end
  end

  if quit_var == 'q' then break end
 
  loop do
    say("Please enter the second number (q to quit).")
    num2 = gets.chomp
    quit_var = num2    
    if num2 == "q"
      break
    elsif !num2.numeric?
      say("Please enter a valid number.") 
    else
      break
    end
  end

  if quit_var == 'q' then break end

  loop do 
    say("What do you want to do?")
    say("1 - Add, 2 - Subtract, 3 - Multiply, 4 - Divide, q - quit")
    operator = gets.chomp
    quit_var = operator

    case operator
    when "1"
      result = num1.to_f + num2.to_f
      operation = "+"
    when "2"
      result = num1.to_f - num2.to_f
      operation = "-"
    when "3"
      result = num1.to_f * num2.to_f
      operation = "*"
    when "4"
      result = num1.to_f / num2.to_f
      operation = "/"
    when "q"
      break 
    else
      say("Please enter 1, 2, 3 or 4 for a valid operation.")
    end

    say("#{num1} #{operation} #{num2} equals #{result}.")
    break
  end

  if quit_var == 'q' then break end

end


