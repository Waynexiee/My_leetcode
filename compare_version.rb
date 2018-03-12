def compare_version(version1, version2)
  version1 = version1.split('.').map(&:to_i)
  version2 = version2.split('.').map(&:to_i)
  size = [version1.size, version2.size].max
  unless size == version1.size
    (size - version1.size).times { version1.push(0) }
  end
  unless size == version2.size
    (size - version2.size).times { version2.push(0) }
  end
  size.times do |i|
    if version1[i] > version2[i]
      return 1
    elsif  version1[i] > version2[i]
      return -1
    end
  end
  0
end

version1 = '0.1'
version2 = '1.1'

puts compare_version(version1, version2)
