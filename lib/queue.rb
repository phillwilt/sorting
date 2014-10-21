class Queue < DoubleLinkedList
  def enqueue(value)
    insert(Node.new(value))
  end

  def dequeue
    remove(@tail)
  end

end
