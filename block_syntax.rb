
#2014.3.14
#https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/18-blocks/lessons/56-new-lesson

addition = lambda { |a, b| a + b }
puts addition.call(5, 5)

addition = lambda { |a, b|
  a + b
}
puts addition.call(5, 5)

addition = lambda do |a, b|
  a + b
end
puts addition.call(5, 5)

addition = lambda do |a ,b|; a + b; end
puts addition.call(5, 5)
