class TreeNode
  attr_reader :score,
              :title
  attr_accessor :left,
                :right
  def initialize(score, title, left = nil, right = nil)
    @score = score
    @title = title
    @left = left
    @right = right
  end
end
