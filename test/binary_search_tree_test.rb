require './test/test_helper.rb'

class TestBinarySearchTree < Minitest::Test
  def setup
    @tree = BinarySearchTree.new
  end

  def test_binary_tree_exists
    assert_instance_of BinarySearchTree, @tree
  end

  def test_tree_has_nil_value_upon_initialization
    @tree = BinarySearchTree.new
    assert_nil @tree.root
  end

  def test_insert_adds_children_nodes
    assert_equal 0, @tree.insert(61, "Bill & Ted's Excellent Adventure")
  end
end
