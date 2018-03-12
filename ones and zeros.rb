def find_max_form(strs, m, n)
  memo = []
  (m+1).times { memo.push([0] * (n + 1)) }
  strs.each do |s|
    zeroNum = 0
    oneNum = 0
    size = s.size
    (0..size-1).each do |i|
      if s[i] == '1'
        oneNum += 1
      else
        zeroNum += 1
      end
    end

    m.downto(zeroNum) do |i|
      n.downto(oneNum) do |j|
        memo[i][j] = [memo[i][j],memo[i-zeroNum][j-oneNum]+1].max
      end
    end
  end
  memo[m][n]
end

strs = ["10", "0001", "111001", "1", "0"]
m = 5
n = 3

puts find_max_form(strs, m, n)
