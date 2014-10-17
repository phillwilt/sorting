require './lib/array_sorter'
require 'benchmark'

MAX = 1_000_000

sort = (0..MAX).to_a.sort

puts 'Sorted Time: '
puts Benchmark.measure {
  sort.radix_sort
}

reverse = (0..MAX).to_a.sort.reverse!

puts 'Reverse Time: '
puts Benchmark.measure {
  reverse.radix_sort
}

random = (0..MAX).to_a.shuffle

puts 'Random Time: '
puts Benchmark.measure {
  random.radix_sort
}
