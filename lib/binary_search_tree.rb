class BinarySearchTree
  attr_reader :root
  def initialize(root = nil)
    @root = root
  end

  def insert(score, title)
    current_node = @root
    if current_node == nil
      @root = TreeNode.new(score, title)
    elsif current_node.score > score
      current_node.left = TreeNode.new(score, title)
    else
      current_node.right = TreeNode.new(score, title)
    end
      # return depth(score)
  end

  def include?(value)
    current_node = @root
    include = false
    if current_node.score == value
      include = true
    elsif current_node.score > value
      current_node = current_node.right
    elsif current_node.score < value
      current_node = current_node.left
    end
    return include
  end

  def depth_of(score)

    binding.pry
  end
end
