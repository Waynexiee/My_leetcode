def get_permutation(n, k)
  k-=1
  ret = ""
  nums = (1..n).to_a
  until n == 0
    n -= 1
    fac = (1..n).inject(:*) || 1
    temp =  k / fac
    k = k % fac
    ret += nums[temp].to_s
    nums.delete_at(temp)
  end
  ret
end



n = 3
k = 3
p get_permutation(n, k)
