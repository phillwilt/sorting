require 'spec_helper'
require 'insertion_sort'

describe InsertionSort do
  before do
    @random_list = (0..100).to_a.sort_by { rand }
    @insertion_sort = InsertionSort.new(@random_list)
  end

  it 'sorts a random list' do
    @insertion_sort.sort!
    @insertion_sort.list == @random_list.sort
  end
end
