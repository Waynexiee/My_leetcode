def happy(n)
  h = {}
  while h[n].nil?
      h[n] = true
      n = n.to_s.chars.map{|ele| ele.to_i ** 2}.reduce(&:+)
      return true if n == 1


  end
  false
end

def is_happy(n)
  happy(n)
end


puts is_happy(82)
