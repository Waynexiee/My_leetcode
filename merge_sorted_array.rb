def merge(nums1, m, nums2, n)
    i = m + n - 1
    j = m - 1
    k = n - 1
    (m + n).times do
      break if k < 0
      if j < 0
        while k >= 0
          nums1[i] = nums2[k]
          i -= 1
          k -= 1
        end
        break
      end
      if nums1[j] > nums2[k]
        nums1[i] = nums1[j]
        i -= 1
        j -= 1
      else
        nums1[i] = nums2[k]
        i -= 1
        k -= 1
      end
    end
end
nums1 = [1,2,3,8,nil,nil,nil]
nums2 = [2,5,6]
m = 4
n = 3
merge(nums1, m, nums2, n)
p nums1
