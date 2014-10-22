class DoubleLinkedList
  Node = Struct.new(:value, :next, :prev)

  attr_reader :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def add(node)
    node.next = @head
    @head.prev = node if @head
    @tail = node if @size == 0
    @head = node
    @size += 1
  end

  def remove(node)
    node.prev.next = node.next if node != @head
    node.next.prev = node.prev if node != @tail
    @size -= 1
    node.value
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
end
