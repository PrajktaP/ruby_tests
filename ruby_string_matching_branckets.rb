def solution(strng)
  arr = strng.split(%r{\s*})
  resultvar = -1
  arr.each_with_index do |a, i|
    lsum = arr[0..i].select{|char| char == "("}.size
    rsum = arr[i+1..arr.size-1].select{|char| char == ")"}.size
  
    if lsum == rsum
      resultvar = arr[0..i].size
    end
  end
  return resultvar
end


#test cases
#solution("(())))(")
#solution("(((((((()))))))))))))))))")
#solution("(((((((())))))))")