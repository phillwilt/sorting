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
    set_load_factor(size)
  end

  def set(key, val)
    position = hash(key)
    @table[position] = LinkedList.new unless @table[position]
    @table[position].add(create_node(key, val))
    @load = @table[position].size if @table[position].size > @load
    expand if @load > @load_factor
  end

  def get(key)
    position = hash(key)
    return nil unless @table[position]
    @table[position].find_key(key)
  end

  private

  def create_node(key, val)
    LinkedList::Node.new([key, val], nil)
  end

  def hash(key)
    hash = 0
    ord = 1
    key.each_char { |c| hash += c.to_i * 10**ord && ord += 1 }
    hash % @mod
  end

  def set_load_factor(size)
    @load_factor = size / 100
  end

  def expand
    @load = 0
    arr = @table
    size = arr.size * 2
    set_load_factor(size)
    @table = Array.new(size)

    arr.each do |list|
      while list && list.size > 0
        pair = list.pop
        set(pair[0], pair[1])
      end
    end
  end
end
