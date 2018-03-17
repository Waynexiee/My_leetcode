def convert_to_title(n)
  ret = ""
  n = n - 1
  while n >= 0
    ret = (65 + n % 26).chr + ret
    n = n / 26 - 1
  end
  ret
end

puts convert_to_title(26)
