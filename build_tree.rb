class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def help(pre_start, in_start, in_end, preorder, inorder)
  return nil if pre_start > preorder.size - 1 || in_start > in_end
  ind = inorder.index(preorder[pre_start])
  root = TreeNode.new(preorder[pre_start])

  root.left = help(pre_start + 1, in_start, ind - 1,preorder, inorder)
  root.right = help(pre_start + 1 + ind - in_start, ind + 1, in_end, preorder, inorder)
  return root
end

def build_tree(preorder, inorder)
  help(0, 0, preorder.size - 1, preorder, inorder)
end


def print_tree(tree)
  puts tree.val unless tree.nil?
  print_tree(tree.left) unless tree.left.nil?
  print_tree(tree.right) unless tree.right.nil?
end
preorder = [1,2,4,5,3,6,7]
inorder = [4,2,5,1,6,3,7]
tree = (build_tree(preorder, inorder))
print_tree(tree)
