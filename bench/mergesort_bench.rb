require './lib/array_sorter'
require 'benchmark'

MAX = 1_000_000

sort = (0..MAX).to_a.sort

puts 'Sorted Time: '
puts Benchmark.measure {
  sort.merge_sort
}

reverse = (0..MAX).to_a.sort.reverse!

puts 'Reverse Time: '
puts Benchmark.measure {
  reverse.merge_sort
}

random = (0..MAX).to_a.sort_by { rand }

puts 'Random Time: '
puts Benchmark.measure {
  random.merge_sort
}
