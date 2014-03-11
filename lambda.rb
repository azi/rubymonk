
#2014.03.11

puts "---------part I---------"

addition = lambda {|a,b| return a+b }
puts addition.call(5,6)

puts "---------part II---------"

empty_block = lambda {}
puts empty_block.object_id
puts empty_block.class
puts empty_block.class.superclass

puts "---------part III:傳統用法---------"

class Calculator
  def add(a, b)
    return a+b
  end
end

puts Calculator.new.add(5,6)


puts "---------part 4---------"

addition_method = Calculator.new.method("add")
addition = addition_method.to_proc

puts addition.call(5,6)


puts "---------final part---------"

Addition = lambda {|a,b| return a+b }
Subtraction = lambda {|a,b| return a-b }
Multiplication = lambda {|a,b| return a*b }
Division = lambda {|a,b| return a/b}

