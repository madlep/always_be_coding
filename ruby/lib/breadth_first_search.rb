module BreadthFirstSearch
  def breadth_first_search
    queue = []
    queue.push self
    while node = queue.shift
      return node if yield node
      queue += node.children
    end
  end

  def breadth_first_each
    queue = []
    queue.push self
    while node = queue.shift
      yield node
      queue += node.children
    end
  end
end

