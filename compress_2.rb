def compress(chars)
  pre = nil
  count = 0
  ret = []
  chars.each do |e|
    if pre == e
      count += 1
    else
      unless pre.nil?
        ret.push(pre)
        ret += count.to_s.split('') if count > 1
      end
      count = 1
    end
    pre = e
  end
  if count >= 1
    ret.push(pre)
    ret += count.to_s.split('') if count > 1
  end
  ret.size.times { |i| chars[i] = ret[i] }
  p chars
  ret.count
end
nums = ["a"]
p compress(nums)
