DIGITS = {
  "2" => "abc",
  "3" => "def",
  "4" => "ghi",
  "5" => "jkl",
  "6" => "mno",
  "7" => "pqrs",
  "8" => "tuv",
  "9" => "wxyz"
}
def letter_combinations(digits)
  ret = [""]
  digits.chars.each do |ele|
    continue unless DIGITS[ele]
    size_ret = ret.size
    size_digit = DIGITS[ele].size
    rett = ret.dup
    ret = []
    0.upto(size_digit - 1) do |j|
      0.upto(size_ret - 1) do |i|
        ret << rett[i] + DIGITS[ele][j]
      end
    end
  end
  ret
end

digits = "23"
p letter_combinations(digits)
