def gcdi(a, b)
  return a.abs if b == 0
  gcdi(b, a % b)
end

def lcmu(a, b)
  (a * b).abs / gcdi(a, b)
end

def som(a, b)
  a + b
end

def maxi(a, b)
  [a, b].max
end

def mini(a, b)
  [a, b].min
end

def oper_array(fct, arr, init)
  # Top solution is pretty clever:
  # arr.map { |x| init = fct.call(init, x) }
  result = [ init ]
  arr.each_with_index.map do |x, index|
    result[index + 1] = fct.call(result[index], x)
  end
  result.shift
  result
end
