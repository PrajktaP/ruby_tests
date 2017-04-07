def power(a,b)
  result=a**b
  result.to_i
  return result
end

def get_number(arr)
  b = arr
  sum = 0

  b.each_with_index do |x,i|
    puts x
    puts cal = x * power(-2,i)
    sum = sum + cal
  end
  return sum
end

def solution(array)
   intg = -(get_number(array))
   final_res = []
   while(intg != 0)
      remainder = (intg % -2).to_i
      intg = (intg / (- 2)).to_i  
      puts "remainder #{remainder}"
      puts "intg #{intg}"
      if (var1 < 0)
         remainder = remainder + 2
         intg = intg + 1
      end   
 
      final_res << remainder
   end
   
   return final_res
end

solution([1,0,0,1,1])
solution([1,0,0,1,1,1])