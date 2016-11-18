puts "hello prajkta"

def show_equilibrium_indexes_for(arr, n)
arr = arr
n = n
lsum = 0
rsum = 0
puts "For #{arr}"

arr.each_with_index do |a, i|
    lsum = arr[0..i-1].inject(0, :+)
    rsum = arr[i+1..n].inject(0, :+)
    puts lsum==rsum ? "#{i} is an equilibrium index" : "#{i} is not an equilibrium index"
end  
end

arr = [-1, 3, -4, 5, 1, -6, 2, 1]
show_equilibrium_indexes_for(arr, arr.size)


def solution(a)
  arr = a
  n = arr.size
  lsum = 0
  rsum = 0
  ei = []
  
  arr.each_with_index do |a, i|
    lsum = arr[0..i-1].inject(0, :+)
    rsum = arr[i+1..n].inject(0, :+)
    ei << i if lsum==rsum
  end
  
  puts "equilibrium indices : #{ei.empty? ? -1 : ei[0]}"
  return ei.empty? ? -1 : ei[0]
end
solution([-1, 3, -4, 5, 1, -6, 2, 1])

solution([-1, -3, -4, -5, -1, -6, -2, -1])

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
  
  puts "equilibrium indices : #{ei.empty? ? -1 : ei[0]}"
  return ei.empty? ? -1 : ei[0]
end