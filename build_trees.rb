class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def build_tree(inorder, postorder)
  return nil if inorder.nil? || inorder.empty?
  root = TreeNode.new(postorder.pop)
  index = inorder.index(root.val)

  subtrees1 = index == 0 ? nil : inorder[0..index-1]
  subtrees2 = inorder[index+1..-1]
  builder(subtrees1, subtrees2, postorder, root)

  root
end

def builder(inorder1, inorder2, postorder, node)
  if inorder1
    postorder1 = postorder & inorder1
    return if postorder1.empty?
    node.left = TreeNode.new(postorder1.pop)
    index = inorder1.index(node.left.val)
    return unless index
    subtrees1 = index == 0 ? nil : inorder1[0..index-1]
    subtrees2 = inorder1[index+1..-1]
    builder(subtrees1, subtrees2, postorder1, node.left)
  end
  if inorder2
    postorder2 = postorder & inorder2
    return if postorder2.empty?
    node.right = TreeNode.new(postorder2.pop)
    index = inorder2.index(node.right.val)
    return unless index
    subtrees1 = index == 0 ? nil : inorder2[0..index-1]
    subtrees2 = inorder2[index+1..-1]
    builder(subtrees1, subtrees2, postorder2, node.right)
  end
end

inorder = [4, 2, 5, 1, 6, 3, 7]
postorder = [4, 5, 2, 6, 7, 3, 1]
# inorder = [1,2]
# postorder = [2,1]
p build_tree(inorder, postorder)
