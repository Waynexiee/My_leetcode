def is_prime?(num)
  sqrt_num = (num ** 0.5).to_i
  2.upto(sqrt_num) do |i|
    return false if num % i == 0
  end
  true
end

def count_primes(n)
  return 0 if n <= 2
  arr = []
  count = 1
  (3..n-1).step(2) do |i|
    if arr[i].nil?
      count += 1
      (i * i..n).step(i) do |j|
        arr[j] = true
      end
    end
  end
  count
end

puts count_primes(499979)
