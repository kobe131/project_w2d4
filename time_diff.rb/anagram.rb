def first_anagram?(str1, str2) # O(n!)
  permutations = str1.split('').permutation.to_a.join
  permutations.include?(str2)
end

# puts first_anagram?("gizmo", "sally")    #=> false
# puts first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1,str2) #n^2
  
  str1.split('').each do |c1|
    str2.split('').each do |c2|
      if c1 == c2 
        str1.delete!(c1)
        str2.delete!(c2)
      end 
    end 
  end 
  str1.empty? && str2.empty?
end 

# puts second_anagram?("gizmo", "sally")    #=> false
# puts second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str1,str2) #O(n^2) ~ O(nlogn)
  str1.split('').sort == str2.split('').sort
end 

 # puts third_anagram?("gizmo", "sally")    #=> false
 # puts third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(str1,str2) #O(n)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  
  str1.split('').each do |c1|
    hash1[c1] += 1
  end 

  str2.split('').each do |c1|
    hash2[c1] += 1
  end 

  hash1 == hash2
end 

# puts fourth_anagram?("gizmo", "sally")    #=> false
# puts fourth_anagram?("elvis", "lives")    #=> true

def fifth_anagram?(str1,str2) #O(n)
  hash1 = Hash.new(0)
  
  str1.split('').each do |c1|
    hash1[c1] += 1
  end 

  str2.split('').each do |c1|
    hash1[c1] -= 1
  end 

  hash1.each do |k,v|
    return false if hash1[k] != 0
  end
  true
end

puts fifth_anagram?("gizmo", "sally")    #=> false
puts fifth_anagram?("elvis", "lives")    #=> true





