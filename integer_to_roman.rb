def int_to_roman(num)
  roman = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
  intger = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
  ret = ""
  13.times do |i|
    ret += roman[i] * (num / intger[i])
    num = num % intger[i]
  end
  ret
end

puts int_to_roman(3999)
