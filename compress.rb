def compress(chars)
  pre = ""
  count = 0
  count_all = 0
  arr = []
  size = chars.size
  chars.each do |ele|
    if pre != ele
      arr << pre << count unless pre == ""
      count = 1
      pre = ele
    else
      count += 1
    end
  end
  arr << pre << count
  count = 0
  arr.each_slice(2) do |ele|
    if ele[1] == 1
      chars[count] = ele[0]
      count += 1
    else
      chars[count] = ele[0]
      count += 1
      ele[1].to_s.chars.each do |ele|
        chars[count] = ele
        count += 1
      end
    end
  end

  chars
end

chars = ["a","a","b","b","c","c","c"]
p compress(chars)
p chars
