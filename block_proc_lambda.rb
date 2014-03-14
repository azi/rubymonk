
#2014.3.14
#https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/18-blocks/lessons/64-blocks-procs-lambdas

puts lambda {}
puts Proc.new {}

def a_method
  lambda { return "we just returned from the block" }.call
  return "we just returned from the calling method"
end

puts a_method


def b_method
  Proc.new { return "we just returned from the block" }.call
  return "we just returned from the calling method"
end

puts b_method

short = ->(a, b) { a + b }
puts short.call(2, 3)

long = lambda { |a,b| a + b }
puts long.call(2, 3)


short = proc { |a,b| a + b }
puts short.call(2, 3)

long = Proc.new { |a,b| a + b }
puts long.call(2, 3)
