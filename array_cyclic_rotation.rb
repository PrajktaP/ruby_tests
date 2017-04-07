def solution(a, k)
  if k > 0 and a.size > 0
    return a.rotate(-k)
  else 
    return a
  end
end
