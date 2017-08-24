def reverse(x)
    return x if x.nil? || x < 10 && x > -10
    mark = 1
    mark = -1 if x < 0
    num = x.to_s.reverse.to_i
    return 0 if (num > 2 ** 31 - 1 && mark == 1) || (num > 2 ** 31 && mark == 1)
    
    num * mark
end
puts reverse(10)
