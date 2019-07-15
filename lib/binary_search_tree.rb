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

  def depth_of(value)
    current_node = @root
    count = 0
    if current_node.score == value
      return count
    elsif current_node.score > value
      current_node = current_node.right
      count += 1
    elsif current_node.score < value
      current_node = current_node.left
      count += 1
    end
    return count
  end
end
