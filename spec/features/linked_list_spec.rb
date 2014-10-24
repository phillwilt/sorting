require 'spec_helper'
require 'linked_list'
require 'pry'

describe 'singly linked list' do
  before do
    @list = LinkedList.new
    (1..26).each { |e| @list.add(LinkedList::Node.new(e)) }
  end

  it 'keeps track of size' do
    @list.size.must_equal 26
  end

  it 'searchs an element' do
    @list.search(1).must_be_instance_of LinkedList::Node
  end

  it 'includes an element' do
    @list.includes?(1).must_equal true
  end

  it 'does not include an el' do
    @list.includes?(100).must_equal false
  end

  it 'removes a node' do
    node = @list.search(10)
    node.must_be_instance_of LinkedList::Node
    val = @list.remove(node)
    @list.size.must_equal 25
    val.must_equal 10
  end

  it 'will not remove a node not in the list' do
    val = @list.remove(LinkedList::Node.new(100))
    val.must_equal nil
    @list.size.must_equal 26
  end
end
