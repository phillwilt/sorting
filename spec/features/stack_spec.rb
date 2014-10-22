require 'spec_helper'
require 'stack'
require 'pry'

describe 'stack' do
  before do
    @stack = Stack.new
    (1..26).each { |e| @stack.push(e) }
  end

  it 'keeps track of size' do
    @stack.size.must_equal 26
  end

  it 'pops a node' do
    top = @stack.pop()
    top.must_equal 26
    @stack.size.must_equal 25
  end

  it 'raises a stack empty error' do
    stack = Stack.new
    stack_err = lambda { stack.pop }
    stack_err.must_raise Stack::StackEmptyError
  end
end
