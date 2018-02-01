def get_row(row_index)
  arr = [1]
  return arr if row_index == 0
  row_index += 1
  row_index.times do |i|
    temp = [1]
    0.upto(i-2) do |j|
      temp.push(arr[j] + arr[j+1])
    end
    temp.push(1)
    arr = temp
  end
  arr
end

p get_row(3)
