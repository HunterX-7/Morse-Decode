module MyEnumerable
  def all?
    each { |e| return false unless yield e }
    true
  end

  def any?
    each { |e| return true if yield e }
    false
  end

  def filter
    arr = []
    each { |e| arr << e if yield e }
    arr
  end
end
