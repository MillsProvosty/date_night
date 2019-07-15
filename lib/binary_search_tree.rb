class BinarySearchTree
  attr_reader :root
  def initialize(root = nil)
    @root = root
  end

  def insert(score, title)
    current_node = @root
    binding.pry
    if current_node == nil
      @root = TreeNode.new(score, title)
      binding.pry
    elsif current_node.score > score
      insert current_node.left(score, title)
    else
      insert current_node.right(score, title)
    end
      return depth(score)
  end

  def depth_of(score)
    
  end
end
