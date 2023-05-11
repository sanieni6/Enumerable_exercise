module MyEnumerable
  def all?
    each do |n|
      return false unless yield(n)
    end
    true
  end

  def any?
    @list.each do |n|
      return true if yield(n)
    end
    false
  end

  def filter
    result = []
    @list.each do |e|
      result.push(e) if yield(e)
    end
    result
  end
end
