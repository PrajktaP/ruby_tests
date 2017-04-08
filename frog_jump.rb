def solution(x, y, d)
  r = 0
  if y>x
    if (((y-x)/d)*d)+x < y
      r = (y-x)/d+1
    elsif (((y-x)/d)*d)+x == y
      r = (y-x)/d
    elsif (((y-x)/d)*d)+x > y
      r = (y-x)/d-1
    end
  end    
  
  return r
end

#(1,5,2) 2
#(5,105,3) 34
#(10,85,30) 3
#(1,1,3) 0
#(50, 199, 4) 38

 
  