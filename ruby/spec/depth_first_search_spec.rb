require "tree_node"

describe DepthFirstSearch do 
  let(:tree) { 
    a = TreeNode.new(:a)
    b = TreeNode.new(:b)
    c = TreeNode.new(:c)
    d = TreeNode.new(:d)
    e = TreeNode.new(:e)
    f = TreeNode.new(:f)
    g = TreeNode.new(:g)

    a << b
      b << d
      b << f
    a << c
      c << g
    a << e
    a
  }

  describe "#depth_first_search" do
    it "should find an element if it exists" do
      node = tree.depth_first_search{|node| node.value  == :c}
      node.value.should == :c
      node.children.size.should == 1
      node.children[0].value.should == :g
    end

    it "should be nil if element does not exist" do
      node = tree.depth_first_search{|node| node.value  == :x}
      node.should be_nil
    end
  end

  describe "#depth_first_each" do
    it "should iterate through items in order" do
      result = []
      tree.depth_first_each{|node| result << node.value}
      result.should == [:a, :b, :d, :f, :c, :g, :e]
    end
  end
  
end
