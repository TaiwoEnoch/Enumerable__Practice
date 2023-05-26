module MyEnumerable
  def my_each
    index = 0
    while index < size
      yield(self[index])
      index += 1
    end
    self
  end
end

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def [](index)
    @list[index]
  end

  def size
    @list.size
  end

  def all?()
    my_each do |item|
      return false unless yield(item)
    end
    true
  end

  def any?()
    my_each do |item|
      return true if yield(item)
    end
    false
  end

  def filter()
    result = []
    my_each do |item|
      result << item if yield(item)
    end
    result
  end
end
