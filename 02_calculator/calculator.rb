#write your code here
def add(operand1, operand2)
  operand1 + operand2
end

def subtract(operand1, operand2)
  operand1 - operand2
end

def sum(numbers)
  numbers.inject(0, :+)
end

def multiply(*operand)
  final = 1.0
  operand.each { |i| final *= i }
  final
end

def power(num1, num2)
  num1**num2
end

def factorial(num)
  answer = 1
  while num > 1
    answer *= num
    num -= 1
  end
  answer
end