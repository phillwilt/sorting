require './lib/insertion_sort'
require 'benchmark'

MAX = 50_000

sort = (0..MAX).to_a.sort

puts 'Sorted Time: '
puts Benchmark.measure {
  sorter = InsertionSort.new(sort)
  sorter.sort!
}

reverse = (0..MAX).to_a.sort
reverse.reverse!

puts 'Reverse Time: '
puts Benchmark.measure {
  sorter = InsertionSort.new(reverse)
  sorter.sort!
}

random = (0..MAX).to_a.sort_by { rand }

puts 'Random Time: '
puts Benchmark.measure {
  sorter = InsertionSort.new(random)
  sorter.sort!
}
