Node = Struct.new(:value, :next)

class LinkedList
  attr_reader :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def add(node)
    node.next = @head
    @tail = node if @size == 0
    @head = node
    @size += 1
  end

  def remove(node)
    temp = @head
    @head = temp.next
    @size -= 1
    temp.value
  end

  def search(value)
    curr = @head
    while curr != nil
      return curr if curr.value == value
      curr = curr.next
    end
    nil
  end

  def includes?(value)
    self.search(value) != nil
  end

  def pop
    remove(@head)
  end

  def reverse!
    prev = nil
    curr = @head
    while curr != nil
      prev = curr
      curr = prev.next
    end
    @head = prev
  end
end
