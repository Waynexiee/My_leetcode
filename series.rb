class Series
  def initialize(str)
    @str = str
    @size = str.size
  end

  def slices(num)
    raise ArgumentError if @size < num
    result = []
    0.upto(@size - num) do |idx|
      result << [@str[idx..idx + num - 1].to_i]
    end
    result
  end
end
