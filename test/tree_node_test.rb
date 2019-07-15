require './test/test_helper.rb'


class TestTreeNode < Minitest::Test
  def setup
    @tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure")
  end

  def test_tree_node_exists
    assert_instance_of TreeNode, @tree_node
  end

  def test_tree_node_has_value
    assert_equal "Bill & Ted's Excellent Adventure", @tree_node.title
  end

  def test_tree_node_has_value
    assert_equal 61, @tree_node.score
  end

  def test_tree_node_left_holds_data_less_than
    assert_equal nil, @tree_node.left
  end

  def test_tree_node_left_holds_data_less_than
    assert_equal nil, @tree_node.right
  end

end
