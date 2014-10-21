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

  it 'deletes a node at an index' do
    node = @list.delete_at(10)
    @list.size.must_equal 25
    node.val.must_equal 15
  end

  it 'finds an element' do
    @list.find(1).must_equal 25
  end

  it 'includes an element' do
    @list.includes?(1).must_equal true
  end

  it 'does not include an el' do
    @list.includes?(100).must_equal false
  end

  it 'retrieves a value at an index' do
    @list.value_at(25).must_equal 1
  end

  it 'reverses in place' do
    @list.reverse!
    @list.value_at(0).must_equal 1
  end
end
