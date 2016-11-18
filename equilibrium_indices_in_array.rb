def solution(a)
  arr = a
  n = arr.size
  lsum = 0
  rsum = 0
  ei = []
  
  arr.each_with_index do |a, i|
    add = false
    lsum = arr[0..i-1].inject(0, :+)
    rsum = arr[i+1..n].inject(0, :+)
    
    if (i == 0 && arr[1..n-1].inject(0, :+) == 0) || (i == n-1 && arr[0..n-2].inject(0, :+) == 0)
      add = true
    end  
    ei << i if lsum==rsum || add == true
  end
  
  return ei.empty? ? -1 : ei[0]
end
