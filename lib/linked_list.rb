require 'pry'
require_relative 'node'


class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def empty?
    @head.nil? && @tail.nil?
  end

  def size
    return 0 if @head.nil?
    tmp = @head
    count = 0
    until tmp.nil?
      tmp = tmp.next
      count += 1
    end
    count
  end

  def each
    node = @head

    while !node.nil?
      yield(node)
      node = node.next
    end
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  def [](index)
    if index == 0
      return @head
    else
      node = @head
      index.times do
        unless node.nil?
          node = node.next
        else
          return nil
        end
      end
      return node
    end
  end

  def to_s
    result = []
    current = @head

    while current and current.next != nil
      result << current.info
      current = current.next
    end
    result << current.info if current
    return "LinkedList(#{result.join(', ')})"
  end


  def insert(index, value)
    current = @head
    if index == 0
      prepend(value)
    else
      (index - 1).times do
        raise "List not long enough" if current.nil?
        current = current.next
      end
    end
    new_node = Node.new(value)
    new_node.next = current.next
    current.next = new_node
  end

  def remove(index)
    return nil if @head.nil? || index > self.size - 1
    if index == 0
      @head = @head.next
    else
      cur = @head
      prev = nil
      index.times do
        prev = cur
        cur = cur.next
      end
      prev.next = cur.next
    end
  end

  def find(value)
    current_node = @head
    while current_node != nil
      return current_node if current_node.value == value
      current_node = current_node.next
    end
  end

  def next_node
  end



end
