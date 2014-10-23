class LinkedList
  Node = Struct.new(:value, :next)
  attr_reader :size

  def initialize
    @head = nil
    @size = 0
  end

  def add(node)
    node.next = @head
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
    @size -= 1
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
