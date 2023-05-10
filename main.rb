require_relative 'MyEnumerable.rb'

# Create class MyList
class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each { |n| block.call(n) }
  end
end

# Instance a new list
list = MyList.new(3, 4, 5, 6)

# Test MyEnumerable methods
all_numbers = list.all? { |n| n < 6 }
any_three = list.any? { |n| n == 3 }
even_numbers = list.filter(&:even?)

# Output
puts <<~TEXT
  All < 6: #{all_numbers}
  Any 3: #{any_three}
  Even numbers found: #{even_numbers}
TEXT
