require 'linked_list'

class Stack < LinkedList
  class StackEmptyError < RuntimeError
  end

  def initialize
    super
  end

  def push(val)
    add(Node.new(val, nil))
  end

  def pop
    raise StackEmptyError if @size == 0
    remove(@head)
  end

  def size
    @size
  end
end
