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

  # def test_insert_adds_children_nodes
  #   @tree.insert(61, "Bill & Ted's Excellent Adventure")
  #   @tree.insert(16, "Johnny English")
  #   @tree.insert(92, "Sharknado 3")
  #   @tree.insert(50, "Hannibal Buress: Animal Furnace")
  #   # assert_equal 0, @tree.insert(61, "Bill & Ted's Excellent Adventure")
  #   # assert_equal 1, @tree.insert(16, "Johnny English")
  #   # assert_equal 2, @tree.insert(92, "Sharknado 3")
  #   assert_equal 3, @tree.insert(50, "Hannibal Buress: Animal Furnace")
  # end

  def test_include_returns_correct_boolean
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    refute @tree.include?(16)
    assert @tree.include?(61)
  end

  def test_depth_of_returns_depth
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @tree.insert(16, "Johnny English")
    @tree.insert(92, "Sharknado 3")
    @tree.insert(50, "Hannibal Buress: Animal Furnace")
    assert_equal 1, @tree.depth_of(92)
    assert_equal 2, @tree.depth_of(50)
  end
end
