
def solution(arr)
  hash = {}
  arr.each do |a|
    hash[a] = hash[a] ? hash[a] : []
    hash[a] << a
  end
  
  if !hash.empty?
    hash.each do |b|
      @odd_value = b[0] if b[1].size%2!=0
    end  
  end
  
  return @odd_value
end