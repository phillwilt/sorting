require './lib/linked_list'

class LinkedList
  def find_key(key)
    curr = @head
    while curr
      return curr.value[1] if curr.value[0] == key
      curr = curr.next
    end
    nil
  end
end

class Hash
  attr_reader :load

  def initialize(size = 1024)
    @table = Array.new(1024)
    @mod = size - 1
    @load = 0
  end

  def size
    return @table.size
  end

  def set(key, val)
    add(key, val)
  end

  def get(key)
    position = hash(key)
    return nil unless @table[position]
    @table[position].find_key(key)
  end

  private

  def add(key,val)
    position = hash(key)
    @table[position] = LinkedList.new unless @table[position]
    @table[position].add(create_node(key, val))
    @load = @table[position].size if @table[position].size > @load
  end

  def create_node(key, val)
    LinkedList::Node.new([key, val])
  end

  def hash(key)
    hash = key.each_char.each_with_index.reduce(0) do |acc, char_array|
      acc + char_array[0].ord * 17**char_array[1]
    end
    hash % @mod
  end
end
