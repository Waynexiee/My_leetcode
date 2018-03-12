def simplify_path(path)
  path = path.split('/')
  ret = []
  path.each do |e|
    next if e.empty? || e == '.'
    if e == '..'
      ret.pop
    else
      ret.push(e)
    end
  end
  ret.empty? ? '/' : "/" + ret.join('/')
end
path = "/a/./b/../../c/"
puts simplify_path(path)
