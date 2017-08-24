def can_place_flowers(flowerbed, n)
    index = 0
    size = flowerbed.size
    loop do
        if flowerbed[index] == 1
          index += 2
        elsif flowerbed[index] == 0 && (flowerbed[index + 1] == nil || flowerbed[index + 1] == 0) && ((flowerbed[index - 1] == 0 && index - 1 >= 0) || index == 0)
           n -= 1
           flowerbed[index] = 1
           index += 2
         else
           index += 1
         end
         return true if n <= 0
         break if index == size
    end
    false
end
flowerbed = [0,0, 0,0, 1]
puts can_place_flowers(flowerbed, 2)
