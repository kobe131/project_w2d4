def bad_two_sum?(arr, target) #On^2
  k = 0 
  while k < arr.length-1
    i = k + 1
    while i < arr.length
      return true if arr[k] + arr[i] == target
      i += 1
    end
    k += 1
  end
  false
end

# arr = [0, 1, 5, 7]
# puts bad_two_sum?(arr, 6) # => should be true
# puts bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target) #(Onlogn ~ n^2) + n
  helper = arr.sort
  okay_helper(helper,target)   
end

def okay_helper(arr,target) #O(n)
  return false if arr.empty?
  init = arr.shift
  return true if arr.include?(target-init)
  okay_helper(arr,target)
end

# arr = [0, 1, 5, 7]
# puts okay_two_sum?(arr, 6) # => should be true
# puts okay_two_sum?(arr, 10) # => should be false

def best_two_sum?(arr,target)#O(n)
  helper = Hash.new(0)
  arr.each do |k|
    helper[k] += 1
  end
  
  helper.each do |k,v|
  
    #puts "#{k} #{helper.key?(target-k)}"
    if helper.key?(target-k) && target != 2*k
      return true 
    elsif v == 2 && target == 2*k
      return true 
    end 
  end 
  return false 
end 
arr = [0, 1, 5, 7]
puts best_two_sum?(arr, 6) # => should be true
puts best_two_sum?(arr, 10) # => should be false
