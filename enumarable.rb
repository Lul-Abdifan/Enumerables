# Define a module MyEnumerable
module MyEnumerable
  def all?(&block)
     # Check if all elements in the list satisfy the condition specified by the block
    @list.each { |elt| return false unless yield(elt) }
    true
  end

  def any?(&block)
     # Check if any element in the list satisfies the condition specified by the block
    @list.each { |elt| return true if yield(elt) }
    false
  end

  def filter?(&block)
     # Filter the list and store elements that satisfy the condition specified by the block
    filter_store = []
    @list.each do |elt|
      filter_store << elt if yield(elt)
    end
    filter_store
  end
end
