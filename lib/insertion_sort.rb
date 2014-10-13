class InsertionSort
  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def sort!
    for i in 1..(@list.length - 1)
      j = i
      while j > 1 && (@list[j - 1] > @list[j])
        swap(@list[j - 1], @list[j])
        j -= 1
      end
    end
  end

  private

  def swap(one, two)
    temp = one
    one = two
    two = temp
  end
end
