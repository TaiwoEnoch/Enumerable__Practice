require_relative 'my_list'

list = MyList.new([1, 2, 3, 4, 5, 6, 7, 8, 9])

puts(list.all? { |e| e < 10 }) # true
puts(list.all? { |e| e > 10 }) # false
puts(list.any? { |e| e == 6 }) # true
puts(list.any? { |e| e == 10 }) # false
puts(list.filter(&:even?)) # [2, 4, 6, 8]
