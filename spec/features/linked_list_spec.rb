require 'spec_helper'
require 'linked_list'
require 'pry'

describe 'singly linked list' do
  before do
    @list = LinkedList.new
    (1..26).each { |e| @list.add(Node.new(e, nil)) }
  end

  it 'keeps track of size' do
    @list.size.must_equal 26
  end

  it 'removes a node' do
    value = @list.remove(Node.new(1))
    @list.size.must_equal 25
    value.must_equal 26
  end

  it 'searchs an element' do
    @list.search(1).must_be_instance_of Node
  end

  it 'includes an element' do
    @list.includes?(1).must_equal true
  end

  it 'does not include an el' do
    @list.includes?(100).must_equal false
  end

  it 'pops a node' do
    value = @list.pop
    value.must_equal 26
  end
end
