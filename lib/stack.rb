require 'linked_list'

class Stack < LinkedList

  def initialize
    super
  end

  def push(val)
    add(Node.new(val, nil))
  end

  def pop
    delete_at(0).val
  end

  def size
    @size
  end
end
