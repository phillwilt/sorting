require 'linked_list'

class Stack < LinkedList
  def push(val)
    add(Node.new(val, nil))
  end

  def pop
    fail 'StackEmptyError' if @size == 0
    remove(@head)
  end
end
