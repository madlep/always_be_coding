require 'algorithm/depth_first_search'
require 'algorithm/breadth_first_search'

module DataStructure
  class TreeNode
    include Algorithm::DepthFirstSearch
    include Algorithm::BreadthFirstSearch

    attr_accessor :value, :children

    def initialize(value)
      self.value = value
      self.children = []
    end

    def <<(node)
      children << node
    end

  end
end
