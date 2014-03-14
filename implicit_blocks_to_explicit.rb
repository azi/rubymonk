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

#----Questions-----

def filter(array, block)
  p array.select { |n| block.call(n) }
  #return array.select { |n| block.call(n) }
end

addition = lambda { |n| n.even? }
filter([1, 2, 3, 4], addition)

#same as above , but why Q1
def filter(array, block)
  return array.select(&block)
end

# two & , why Q2
Filter = lambda do |array, &block|
  return array.select(&block)
end

#參考解答　http://tonytonyjan.net/2011/08/12/ruby-block-proc-lambda/
