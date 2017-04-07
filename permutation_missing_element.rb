#PermMissingElem
#Find the missing element in a given permutation.

def solution(a)
  a2 = (1..(a.size+1)).to_a
  r = a2-a
  return r.join("").to_i
end

#test cases
#[]
#[1]
#[3,2,1,5]