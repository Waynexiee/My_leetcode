def find_poisoned_duration(time_series, duration)
  return 0 if time_series.empty?
  ret = 0
  size = time_series.size - 1
  (0..size-1).each do |i|
    ret += [time_series[i + 1] - time_series[i],duration].min
  end
  ret += duration
end
time_series = [1,2]
duration = 2
puts find_poisoned_duration(time_series, duration)
