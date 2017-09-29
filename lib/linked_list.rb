require 'pry'
require_relative 'node'

class LinkedList
  def initialize
    @head = nil
  end

  def each
    node = @head

    while !node.nil?
      yield(node.data)
      node = node.next
    end
  end

  def preprend(value)
    @head = Node.new(value, @head)
  end


end
