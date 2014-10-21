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
    ms_sort(self)
  end

  def quick_sort
    q_sort(self)
  end

  def radix_sort
    rad_sort(self, 1, find_max(self))
  end

  private

  def find_max(arr)
    max = 0
    arr.each { |e| max = e if e > max }
    max
  end

  def rad_sort(arr, exp, max)
    return arr if exp > max
    buckets = [[],[],[],[],[],[],[],[],[],[]]

    arr.each do |el|
      digit = (el / exp) % 10
      buckets[digit] << el
    end
    rad_sort(buckets.flatten, exp * 10, max)
  end

  def q_sort(arr)
    return arr if arr.size <= 1
    small = []
    large = []
    pindex = rand(arr.size)
    pivot = arr[pindex]

    arr.each_with_index do |el, index|
      next if index == pindex
      small << el if el <= pivot
      large << el if el > pivot
    end
    small = q_sort(small)
    small + [pivot] + q_sort(large)
  end

  def ms_sort(arr)
    return arr if arr.size == 1

    split = (arr.size / 2).to_i
    left = ms_sort(arr.slice(0, split))
    right = ms_sort(arr.slice(split, arr.size))

    ms_merge(left, right)
  end

  def ms_merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      sorted.push(left.first <= right.first ? left.shift : right.shift)
    end
    sorted + left + right
  end
end
