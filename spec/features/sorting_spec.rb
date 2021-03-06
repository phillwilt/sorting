require 'spec_helper'
require 'array_sorter'
require 'pry'

describe 'array sorting' do
  before do
    @random = (1..100).to_a.sort_by { rand }
    @sorted = @random.sort
  end

  it 'sorts a random list in place with insertion sort' do
    @random.insertion_sort!
    @random.must_equal @sorted
  end

  it 'sorts a random list with merge sort' do
    @random.merge_sort.must_equal @sorted
  end

  it 'sorts a random list with duplicates with merge sort' do
    random = (1..100).map{rand(1..100)}
    random.merge_sort.must_equal random.sort
  end

  it 'sorts a list with quick sort' do
    @random.quick_sort.must_equal @sorted
  end

  it 'sorts a random list with duplicates with radix' do
    random = (1..100).map{rand(1..100)}
    random.quick_sort.must_equal random.sort
  end

    it 'sorts a list with radix sort' do
    @random.radix_sort.must_equal @sorted
  end

  it 'sorts a random list with duplicates with radix sort' do
    random = (1..100).map{rand(1..1000000)}
    random.radix_sort.must_equal random.sort
  end
end
