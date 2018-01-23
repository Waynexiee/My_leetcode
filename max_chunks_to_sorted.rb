def max_chunks_to_sorted(arr)
  ret = []
  arr.each_with_index do |num, idx|
    ret.push( [[num,idx].min, [num,idx].max] )
  end

  ret.sort! { |x,y| x[0] <=> y[0] }
  rett = [ret.shift]

  until ret.empty?
    temp = ret.shift
    temp1 = rett.pop
    if temp[0] <= temp1[1]
      rett.push([temp1[0], [temp[1],temp1[1]].max])
    else
      rett.push(temp1)
      rett.push(temp)
    end
  end

  rett.size
end

arr = [4,3,2,1,0]
puts max_chunks_to_sorted(arr)

arr = [1,0,2,3,4]
puts max_chunks_to_sorted(arr)
