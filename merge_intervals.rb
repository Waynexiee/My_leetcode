class Interval
    attr_accessor :start, :end
    def initialize(s=0, e=0)
        @start = s
        @end = e
    end
end

def overlap?(start1, end1, start2, end2)
  !(start1 > end2 || start2 > end1)
end

def merge(intervals)
  return intervals if intervals.nil? || intervals.empty?
  intervals.sort! {|x,y| x.start <=> y.start}
  size = intervals.size
  result = []
  result << intervals[0]
  0.upto(size - 2) do |i|
    temp = result.pop
    if overlap?(temp.start, temp.end, intervals[i + 1].start, intervals[i + 1].end)
      result << Interval.new([temp.start,intervals[i + 1].start].min, [intervals[i + 1].end, temp.end].max)
    else
      result << temp <<intervals[i + 1]
    end
  end
  result
end

intervals = []
intervals << Interval.new(1,3) << Interval.new(2,6) << Interval.new(8,10) << Interval.new(15,18)
p merge(intervals)
