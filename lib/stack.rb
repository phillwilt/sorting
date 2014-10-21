require 'linked_list'

class Stack < LinkedList

  def initialize
    super
  end

  def push(val)
    add(Node.new(val, nil))
  end

  def pop
    remove(@head)
  end

  def size
    @size
  end
end
