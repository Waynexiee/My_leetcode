class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def lowest_common_ancestor(root, p, q)
  arr1, arr2 = [], []
  temp = []
  stack = [root]
  arr1 = get_path(root, p, stack)

  stack = [root]
  arr2 = get_path(root, q, stack)
  itimes = [arr1.size, arr2.size].min
  temp = arr1[0]
  itimes.times do |idx|
    return temp if arr1[idx] != arr2[idx]
    temp = arr1[idx]
  end
  temp
end

def get_path(root, target, stack)
  if root == target
    return stack
  end

  unless root.left.nil?
    stack.push(root.left)
    temp = get_path(root.left, target, stack)
    return temp if temp
    stack.pop
  end

  unless root.right.nil?
    stack.push(root.right)
    temp = get_path(root.right, target, stack)
    return temp if temp
    stack.pop
  end
  nil
end

def sorted_array_to_bst(nums)
  size = nums.size
  root = createNode(0, size - 1, nums)
  root
end

def createNode(left, right, nums)
  return nil if left > right
  mid = (left + right) / 2
  root = TreeNode.new(nums[mid])
  root.left = createNode(left, mid - 1, nums)
  root.right = createNode(mid + 1, right, nums)
  root
end


root = TreeNode.new(-1)
root.left = TreeNode.new(0)
root.right = TreeNode.new(3)
root.left.left = TreeNode.new(-2)
root.left.right = TreeNode.new(4)
root.left.left.left = TreeNode.new(8)

p lowest_common_ancestor(root, root.left.left.left,  root.left.right)
