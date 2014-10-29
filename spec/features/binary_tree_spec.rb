require 'spec_helper'
require 'binary_tree'

describe 'BinaryTree' do
  before do
    peter = BinaryTree.new('Peter')
    andrea = BinaryTree.new('Andrea')
    katie = BinaryTree.new('Katie', peter, andrea)
    dan = BinaryTree.new('Dan')
    jony = BinaryTree.new('Jony', dan, katie)
    craig = BinaryTree.new('Craig')
    eddie = BinaryTree.new('Eddie')
    phil = BinaryTree.new('Phil', craig, eddie)
    @tim = BinaryTree.new('Tim', jony, phil)
  end

  it 'should have a pre-order DFS' do
    BinaryTree.preorder_search(@tim, []).must_equal %w( Tim Jony Dan Katie Peter Andrea Phil Craig Eddie )
  end

  it 'should have a in-order DFS' do
    BinaryTree.inorder_search(@tim, []).must_equal %w( Dan Jony Peter Katie Andrea Tim Craig Phil Eddie )
  end

  it 'should have a post-order DFS' do
    BinaryTree.postorder_search(@tim, []).must_equal %w( Dan Peter Andrea Katie Jony Craig Eddie Phil Tim )
  end
end
