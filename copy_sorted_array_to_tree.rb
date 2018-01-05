class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
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


nums = [-10,-3,0,5,9]
p sorted_array_to_bst(nums)
