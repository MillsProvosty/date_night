class TreeNode
  attr_reader :value,
              :left,
              :right
  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

end
