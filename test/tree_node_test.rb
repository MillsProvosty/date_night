require './test/test_helper.rb'


class TestTreeNode < Minitest::Test
  def setup
    @tree_node = TreeNode.new(8, 7, 9)
  end

  def test_tree_node_exists
    assert_instance_of TreeNode, @tree_node
  end

  def test_tree_node_has_value
    assert_equal 8, @tree_node.value
  end

  def test_tree_node_left_holds_data_less_than
    assert_equal 7, @tree_node.left
  end

  def test_tree_node_left_holds_data_less_than
    assert_equal 9, @tree_node.right
  end

end
