require 'spec_helper'
require 'double_linked_list'
require 'pry'

describe 'doubly linked list' do
  before do
    @list = DoubleLinkedList.new
    (1..26).each { |e| @list.add DoubleLinkedList::Node.new(e) }
  end

  it 'keeps track of size' do
    @list.size.must_equal 26
  end

  it 'removes a DoubleLinkedList::node' do
    node = DoubleLinkedList::Node.new(1)
    @list.add(node)
    value = @list.remove(node)
    @list.size.must_equal 26
    value.must_equal 1
  end

  it 'searchs an element' do
    @list.search(1).must_be_instance_of DoubleLinkedList::Node
  end

  it 'includes an element' do
    @list.includes?(1).must_equal true
  end

  it 'does not include an el' do
    @list.includes?(100).must_equal false
  end

  it 'pops a DoubleLinkedList::node' do
    value = @list.pop
    value.must_equal 26
  end

  it 'removes duplicates' do
    10.times { |i| @list.add DoubleLinkedList::Node.new(i + 1) }
    @list.size.must_equal 36
    @list.remove_duplicates
    @list.size.must_equal 26
  end
end
