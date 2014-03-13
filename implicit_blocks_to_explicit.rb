#2013.03.13

def calculation(a, b, &block)
  block.call(a, b)
end

puts calculation(5, 5) { |a,b| a + b}


def calculation2(a, b)
  yield(a, b)
end

addition = lambda { |x,y| x + y }
puts calculation2(5, 5, &addition)

def filter(array, block)
  p array.select { |n| block.call(n) }
  return array.select { |n| block.call(n) }

  #return array.select # Your code here
end

addition = lambda { |n| n.even? }
filter([1, 2, 3, 4], addition)
