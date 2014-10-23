require './lib/hash'
require 'benchmark'
hash = Hash.new(1024)

total = 0
print 'Starting to read...'
puts Benchmark.measure {
  File.foreach('/usr/share/dict/words') do |word|
     hash.set(word, word.reverse)
     total += 1
   end
}

print "Finished storing #{total} words\n"
puts "Load: #{hash.load}"
