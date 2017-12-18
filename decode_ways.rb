def num_decodings(s)
  return 0 if s.nil? || s.empty? || s[0] == '0'
  size = s.size
  mem = []
  mem[size] = 1;
  mem[size - 1] = (s[size - 1] == '0') ? 0 : 1
  (size - 2).downto(0) do |i|
    if s[i] == '0'
      mem[i] = 0
      next
    end
    if s[i..i+1].to_i < 27
      mem[i] = mem[i+1] + mem[i+2]
    else
      mem[i] = mem[i+1]

    end
  end
  return mem[0]
end

s = "101"

puts num_decodings(s)
