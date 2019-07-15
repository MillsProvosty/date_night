require './test/test_helper.rb'

class TestBinarySearchTree < Minitest::Test
  def setup
    @tree = BinarySearchTree.new(10)
  end
end
