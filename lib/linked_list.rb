require 'pry'
require_relative 'node'

class LinkedList
  def initialize
    @head = nil
  end

  def each
    node = @head

    while !node.nil?
      yield(node.info)
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



end
