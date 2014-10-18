require 'node'

class LinkedList
  attr_reader size

  def add(node)
    node.ptr = head
    head = node
    size += 1
  end

  def delete_at(index)
    current = head
    for i in (0..index)
      prev = current
      current = current.next
    end
    prev = current.next
  end
end
