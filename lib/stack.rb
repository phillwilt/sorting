require 'linked_list'

class Stack

  def initialize
    @list = LinkedList.new
  end

  def push(val)
    @list.add(Node.new(val, nil))
  end

  def pop
    @list.delete_at(0).val
  end

  def size
    @list.size
  end
end
