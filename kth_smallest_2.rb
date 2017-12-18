class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

root = TreeNode.new(50)
root.left = TreeNode.new(30)
root.right = TreeNode.new(70)
root.left.left = TreeNode.new(20)
root.left.right = TreeNode.new(40)
root.right.left = TreeNode.new(60)
root.right.right = TreeNode.new(80)


def kth_smallest(root, k)
  count = 0;
  a = [0]
  traverse(root,k,a);
  a[1]
end

def traverse(root,k,a)
  if(root == nil || a[3])
    return
  end

  traverse(root.left,k,a)
  a[0] += 1;
  if (a[0] == k)
    a[1] = root.val
    a[3] = true;
    return
  end
  traverse(root.right,k,a);
end

puts kth_smallest(root, 5)
