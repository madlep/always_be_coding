module DepthFirstSearch
  def depth_first_search(&block)
    if block.call(self)
      self
    else
      children.find{|node| node.depth_first_search(&block) }
    end
  end

  def depth_first_each(&block)
    block.call(self)
    children.each{|node| node.depth_first_each(&block) }
  end
end
