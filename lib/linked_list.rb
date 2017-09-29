require 'pry'
require_relative 'node'

class LinkedList
  def initialize
    @head = nil
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

  def remove
    
  end



end
