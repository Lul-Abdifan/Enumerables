module MyEnumerable
  def all?
    @list.each { |elt| return false unless yield(elt) }
    true
  end

  def any?
    @list.each { |elt| return true if yield(elt) }
    false
  end

  def filter?
    filter_store = []
    @list.each do |elt|
      filter_store << elt if yield(elt)
    end
    filter_store
  end
end
