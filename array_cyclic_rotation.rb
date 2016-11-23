def solution(a, k)
  if k > 0
    return a.rotate(-k)
  else 
    return a
  end
end