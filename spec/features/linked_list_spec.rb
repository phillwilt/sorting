require 'spec_helper'
require 'array_sorter'
require 'pry'

describe 'linked list' do
  before do
    @list
    (a..z).each { |e| @list.add(e) }
  end

  it 'keeps track of size' do
    @list.size.must_equal 26
  end
end
