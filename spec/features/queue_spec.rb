require 'spec_helper'
require 'queue'
require 'pry'

describe 'Que' do
  before do
    @queue = Que.new
    (1..26).each { |e| @queue.enqueue(e) }
  end

  it 'keeps track of size' do
    @queue.size.must_equal 26
  end

  it 'dequeues a node' do
    item = @queue.dequeue
    item.must_equal 1
    @queue.size.must_equal 25
  end

  it 'dequeues a node' do
    que = Que.new
    empty_que = lambda { que.dequeue }
    empty_que.must_raise(Que::QueueEmptyError)

  end
end
