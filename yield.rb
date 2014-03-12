#2014.03.12

puts "----1.------"

def calculation(a, b, operation)
  operation.call(a,b)
end

puts calculation(5, 6, lambda { |a, b| a + b })
puts calculation(5, 6, lambda { |a, b| a - b })

puts "----2.------"

def foo
  yield
end

foo { puts "sometimes shortcuts do get you there faster" }

puts "----3.------"

#Yield is not a method

def foo2
  puts yield
  puts method(:foo2)

  #puts method(:yield)
end

foo2 { "I expect to be heard." }

puts "-------4.---------"

# an exception (a LocalJumpError) with message "no block given"

def foo3
  yield
end

#ucomment this ,you can see error msg.
#foo3

puts "------5-----------"
#defend against error message out.
def foo4
  yield if block_given?
end
foo4

def prettify_it
   puts "The result of the block was:#{yield}"
end

prettify_it{ "Hello,world" }
prettify_it{ 1+1 }
