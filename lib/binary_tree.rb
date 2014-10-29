class BinaryTree
  attr_accessor :left, :right, :val

  def initialize(val = nil, left = nil, right = nil)
    @left = left
    @right = right
    @val = val
  end

  def self.preorder_search(root, values = [])
    return unless root
    values.push(root.val)
    preorder_search(root.left, values)
    preorder_search(root.right, values)
    values
  end

  def self.inorder_search(root, values = [])
    values.push(inorder_search(root.left)) if root.left
    values.push(root.val)
    values.push(inorder_search(root.right)) if root.right
    values.flatten
  end

  def self.postorder_search(root, values = [])
    values.push(postorder_search(root.left)) if root.left
    values.push(postorder_search(root.right)) if root.right
    values.push(root.val)
    values.flatten
  end
end
