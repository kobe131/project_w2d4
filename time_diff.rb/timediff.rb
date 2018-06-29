def function_1(arr)
  small = arr[0]
  arr.each do |e1|
    arr.each do |e2|
      if e1 < e2 && e1 < small
        small = e1
      end 
    end
  end
  small
end 

list = [0,3,5,4,-5,10,1,90]

puts(function_1(list))

def function_2(arr)
  small = arr[0]
  arr.each do |e|
    if e < small
      small = e 
    end 
  end 
  small
end 

puts(function_2(list))

def largest_contiguous_subsum(arr)
  max = 0
  0.upto(arr.length-1).each do |i1|
    ((i1+1)..arr.length-1).each do |i2|
      if arr[i1..i2].reduce(:+) > max 
        max = arr[i1..i2].reduce(:+)
      end 
    end 
  end 
  max 
end 
list = [2, 3, -6, 7, -6, 7]
puts(largest_contiguous_subsum(list))

def better_contiguous_subsum(arr)
  # cont = true
  # max = 0 
  # arr.each do |x|
  #   temp1 = x 
  #   temp2 = 0 
  #   if max < max + temp1
  #      max += temp1
  #      cont = true 
  # 

  # helper = arr[0]
  # temp = arr[0]
  # continuous = true
  # arr.each do |el|
  #   if helper + el > helper && continuous
  #     helper += el
  #   else
  #     continuous = false
  #   end
  #   if el > helper
  #     continuous = true
  #     helper = el
  #   end
  # end
  # helper
  # temp = 0
  # 
  # arr.each do |x| 
  #   final = temp + x 
  #   if final > temp 
  #     temp = final
  #   else
  #   end 
  # end   
  # temp 
end 

list = [2, 3, -6, 7, -6, 7]
puts(better_contiguous_subsum(list))






