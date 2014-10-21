require './lib/array_sorter'
require 'benchmark'

MAX = 50_000

sort = (0..MAX).to_a.sort

puts 'Sorted Time: '
puts Benchmark.measure {
  sort.insertion_sort!
}

reverse = (0..MAX).to_a.sort.reverse!

puts 'Reverse Time: '
puts Benchmark.measure {
  reverse.insertion_sort!
}

random = (0..MAX).to_a.sort_by { rand }

puts 'Random Time: '
puts Benchmark.measure {
  random.insertion_sort!
}
