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

  def reverse!
    prev = nil
    curr = @head
    while curr != nil
      prev = curr
      curr = prev.next
    end
    @head = prev
  end

  def remove(node, current_node = @head)
    if first_node_matches(node, current_node)
      return node.value
    elsif second_node_matches(node, current_node)
      return node.value
    end

    remove(node, current_node.next)

  rescue NoMethodError => e
    nil if e.to_s.match(/value/)
  end

  private

  def first_node_matches(node, current_node)
    if node.value == current_node.value
      @head = @head.next
      @size -= 1
      return true
    end
    false
  end

  def second_node_matches(node, current_node)
    if node.value == current_node.next.value
      current_node.next = current_node.next.next
      @size -= 1
      return true
    end
    false
  end
end
