require 'depth_first_search'

class TreeNode
  include DepthFirstSearch

  attr_accessor :value, :children

  def initialize(value)
    self.value = value
    self.children = []
  end

  def <<(node)
    children << node
  end

end
