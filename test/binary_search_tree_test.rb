require './test/test_helper.rb'

class TestBinarySearchTree < Minitest::Test
  def setup
    @tree = BinarySearchTree.new(10)
  end

  def test_binary_tree_exists
    assert_instance_of BinarySearchTree, @tree
  end

  def test_tree_has_nil_value_upon_initialization
    tree = BinarySearchTree.new
    assert_nil tree.root_value
  end

  def test_tree_returns_root_value
    assert_equal 10, @tree.root_value
  end

  
end
