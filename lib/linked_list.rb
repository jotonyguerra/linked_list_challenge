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


  def insert
  end

  def delete_at(index)
  end



end
