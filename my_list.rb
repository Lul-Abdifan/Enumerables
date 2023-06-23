require_relative 'enumarable'

# Define a class MyList
class MyList
  include Enumerable

  # Initialize the MyList with a list
  def initialize(list)
    @list = list
  end

  # Implement the each method required by the Enumerable module
  def each(&block)
    @list.each(&block)
  end
end

# Create a new instance of MyList
list = MyList.new([1, 2, 3, 4])

# Check if all elements in the list are less than 5
puts(list.all? { |e| e < 5 })
# Check if all elements in the list are greater than 5
puts(list.all? { |e| e > 5 })
# Check if any element in the list is equal to 2
puts(list.any? { |e| e == 2 })
# Check if any element in the list is equal to 5
puts(list.any? { |e| e == 5 })
# Filter the list and keep only even elements
puts list.filter(&:even?).inspect
