#!/usr/bin/env ruby

def operate(operand_one, operand_two, operation)
  case operation
  when nil
    return operand_one
  when :times
    return operand_one * operand_two
  when :plus
    return operand_one + operand_two
  when :minus
    return operand_one - operand_two
  when :divided_by
    return operand_one / operand_two
  end
end

def zero(operation = [nil, nil])
  operate(0, operation[1], operation[0])
end

def one(operation = [nil, nil])
  operate(1, operation[1], operation[0])
end

def two(operation = [nil, nil])
  operate(2, operation[1], operation[0])
end

def three(operation = [nil, nil])
  operate(3, operation[1], operation[0])
end

def four(operation = [nil, nil])
  operate(4, operation[1], operation[0])
end

def five(operation = [nil, nil])
  operate(5, operation[1], operation[0])
end

def six(operation = [nil, nil])
  operate(6, operation[1], operation[0])
end

def seven(operation = [nil, nil])
  operate(7, operation[1], operation[0])
end

def eight(operation = [nil, nil])
  operate(8, operation[1], operation[0])
end

def nine(operation = [nil, nil])
  operate(9, operation[1], operation[0])
end

def plus(num)
  return [:plus, num]
end

def minus(num)
  return [:minus, num]
end

def times(num)
  return [:times, num]
end

def divided_by(num)
  return [:divided_by, num]
end

puts seven(times(five))
