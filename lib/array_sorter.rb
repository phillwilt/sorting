class Array
  def insertion_sort!
    (1..size - 1).each do |i|
      j = i
      while j > 0 && (self[j - 1] > self[j])
        self[j - 1], self[j] = self[j], self[j - 1]
        j -= 1
      end
    end
  end

  def merge_sort
    merge_sort_helper(self)
  end

  private

  def merge_sort_helper(unsorted_array)
    return unsorted_array if unsorted_array.size == 1
    split = (unsorted_array.size / 2).to_i
    left = merge_sort_helper(unsorted_array.slice(0, split))
    right = merge_sort_helper(unsorted_array.slice(split, unsorted_array.size))
    merge_sorter(left, right)
  end

  def merge_sorter(left, right)
    sorted_array = []
    until left.empty? || right.empty?
      if left[0] <= right[0]
        sorted_array << left.shift
      else
        sorted_array << right.shift
      end
      return sorted_array + right if left.empty?
      return sorted_array + left if right.empty?
    end
  end
end
