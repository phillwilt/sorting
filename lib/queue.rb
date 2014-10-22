require 'double_linked_list'

class Que < DoubleLinkedList
  class QueueEmptyError < RuntimeError
  end

  def enqueue(value)
    add(Node.new(value))
  end

  def dequeue
    raise QueueEmptyError if @size == 0
    remove(@tail)
  end
end
