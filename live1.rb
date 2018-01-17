def solution(arr)
  hour_1 = arr.select{|e| e < 3}.max
  arr.delete(hour_1)
  hour_2 = arr.select{|e| (e < 4 && hour_1 == 2) || (hour_1 < 2) }.max
  arr.delete(hour_2)
  if arr[0].to_i > arr[1].to_i && arr[0].to_i < 6
    minu = arr.join.to_i
  else
    minu = arr.reverse.join.to_i
  end

  [hour_1 * 10 + hour_2, minu]
end

arr = [1,2,3,4]
p solution(arr)
