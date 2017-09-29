class Node
  attr_accessor :info, :next

  def initialize(info, next_node)
    self.info = info
    self.next = next_node
  end
end
