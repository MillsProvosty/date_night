class BinarySearchTree
  attr_reader :root
  def initialize(root = nil)
    @root = root
  end

  def insert(score, title)
    current_node = @root
    if @root == nil
      @root = TreeNode.new(score, title)
    else @root.score >

  end
end
