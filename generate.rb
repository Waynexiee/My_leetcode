def generate(num_rows)
    arr = []
    return arr if num_rows == 0
    arr_sub = [1]
    arr << arr_sub
    return arr if num_rows == 1
    arr_sub = [1, 1]
    arr << arr_sub
    return arr if num_rows == 2
    3.upto(num_rows) do |i|
      arr_sub = []
      arr_sub << 1
      (i - 2).times do |j|
        arr_sub << arr[i - 2][j] + arr[i - 2][j + 1]
      end
      arr_sub << 1
      arr << arr_sub
    end
    arr
end

p generate(5)
