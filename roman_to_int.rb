VALUE = { "M" => 1000,
          "D" => 500,
          "C" => 100,
          "L" => 50,
          "X" => 10,
          "V" => 5,
          "I" => 1}
def roman_to_int(s)
  size = s.size - 1
  result = 0
  0.upto(size - 1) do |i|
    if(VALUE[s[i]] < VALUE[s[i+1]])
      result -= VALUE[s[i]]
    else
      result += VALUE[s[i]]
    end
  end
  result += VALUE[s[size]]
  result
end
s = "DCXXI"
puts roman_to_int(s)
