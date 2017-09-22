class Point
  attr_accessor :x, :y
  def initialize(x=0, y=0)
    @x = x
    @y = y
  end
end

def max_points(points)
  h = {}
  size = points.size
  return size if size < 3
  points.each do |i|
    arr = []
    count = 0
    points.each do |j|
      next if i==j
      if i.x == j.x
        if i.y == j.y
          count += 1
        else
          arr << 999999999
        end
      else
        arr << (i.y - j.y)*10000.0/(i.x - j.x)
      end
    end

    h[i] = arr.map{|x| arr.count(x)}.max
    h[i] = h[i] ? h[i] + count + 1 : count + 1
  end
  h.values.max
end
points = []
point = [[0,0],[94911151,94911150],[94911152,94911151]]
point.each do |ele|
  points << Point.new(ele.first,ele.last)
end
p max_points(points)
