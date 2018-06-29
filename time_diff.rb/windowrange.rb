def phase_one_window_range(arr, window_size) #o(n^2)
  max = 0
  0.upto(arr.length-window_size).each do |idx1|
    localmax = arr[idx1..idx1+window_size-1].max - arr[idx1..idx1+window_size-1].min
    if localmax > max 
      max = localmax
    end 
  end 
  max 
end

# puts phase_one_window_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# puts phase_one_window_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# puts phase_one_window_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# puts phase_one_window_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 

class MyQueue
  def initialize
    @store = []
  end
  
  def peek
    @store.first 
  end 
  
  def size 
    @store.length
  end 
  
  def empty?
    @store.size == 0
  end 
  
  def enqueue(e)
    @store.push(e)
    @store
  end 
  
  def dequeue
    @store.shift
  end 
end

# queue = MyQueue.new
# queue.enqueue(5)
# queue.enqueue(10)
# queue.enqueue(15)
# p queue.size 
# p queue.peek
# p queue.dequeue
class MyStack
  def initialize
    @store = []
  end
  
  def peek
    @store.last
  end
  
  def size
    @store.length
  end
  
  def empty?
    @store.empty?
  end
  
  def pop
    @store.pop()
  end
  
  def push(el)
    @store.push(el)
  end
end

# stack = MyStack.new
# stack.push(5)
# stack.push(10)
# stack.push(15)
# p stack.size 
# p stack.peek
# p stack.pop

class StackQueue
  def initialize
    @on_bucket = MyStack.new
    @off_bucket = MyStack.new
  end
  
  def size
    @on_bucket.size + @off_bucket.size 
  end
  
  def empty?
    @on_bucket.empty? && @off_bucket.empty?
  end
  
  def enqueue(el)
    @on_bucket.push(el)
  end
  
  def dequeue
    if @off_bucket.empty?
      until @on_bucket.empty?
        @off_bucket.push(@on_bucket.pop)
      end
      @off_bucket.pop
    else
      @off_bucket.pop
    end
  end
end

stack = StackQueue.new
stack.enqueue(5)
stack.enqueue(10)
stack.enqueue(15)
p stack.size 
p stack
p stack.dequeue
p stack.dequeue
p stack.dequeue

