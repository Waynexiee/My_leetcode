def multiply(num1, num2)
  return '0' if num1 == '0' || num2 == '0' 
  size1 = num1.size
  ret = ""
  (size1 - 1).downto(0) do |i|
    temp = single_multiply(num1[i], num2, size1 - 1 - i)
    ret = add(ret, temp)
  end
  ret
end

def single_multiply(num1, num2, off)
  table = "0123456789"
  size = num2.size
  num1 = num1.to_i
  ret = ""
  carry = 0
  (size - 1).downto(0) do |i|
    temp = num2[i].to_i * num1 + carry
    ret = table[temp % 10] + ret
    carry = temp / 10
  end
  ret = ret + '0' * off
  ret = carry.to_s + ret if carry != 0
  ret
end

def add(num1, num2)
  table = "0123456789"
  num1 = num1.split('')
  num2 = num2.split('')
  ret = ''
  carry = 0
  while !num1.empty? && !num2.empty?
    temp = num1.pop.to_i + num2.pop.to_i + carry
    ret = table[temp % 10] + ret
    carry = temp / 10
  end

  while !num1.empty?
    temp = num1.pop.to_i + carry
    ret = table[temp % 10] + ret
    carry = temp / 10
  end

  while !num2.empty?
    temp = num2.pop.to_i + carry
    ret = table[temp % 10] + ret
    carry = temp / 10
  end

  ret = carry.to_s + ret if carry != 0
  ret
end

num1 = "123456"
num2 = "8765432"

puts multiply(num1, num2)
