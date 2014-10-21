Node = Struct.new(:val, :ptr)

class LinkedList
  attr_reader :size

  def initialize
    @head = nil
    @size = 0
  end

  def add(node)
    node.ptr = @head
    @head = node
    @size += 1
  end

  def delete_at(index)
    temp = @head
    current = @head
    for i in (0..index)
      prev = current
      current = current.ptr
    end
    prev = current.ptr
    @size -= 1
    temp
  end

  def find(val)
    curr = @head
    i = -1
    while curr != nil
      i += 1
      return i if curr.val == val
      curr = curr.ptr
    end
    nil
  end

  def includes?(val)
    self.find(val) != nil
  end

  def value_at(index)
    curr = @head
    for i in (0..index - 1)
      curr = curr.ptr
    end
    curr.val
  end

  def reverse!
    prev = nil
    curr = @head
    while curr != nil
      prev = curr
      curr = prev.ptr
    end
    @head = prev
  end
end
