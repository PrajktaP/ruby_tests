def solution(n)
  bs = n.to_s(2)
  str = bs.gsub("0", " ").strip.gsub(" ", "0")
  arr = str.split('1').sort{|x,y| y.size <=> x.size}
  if arr.empty?
    return 0
  else
	  return arr[0].size
  end
end

