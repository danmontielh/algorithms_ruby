class Stack
    attr_accessor :stack, :min
    def initialize
      @stack = []
      @min = 0
    end
    def push(number)
      @stack.push(number)
      if @stack.size >= 2
        @min = @min <= number ? (@min) : (number) 
      else
        @min = @stack.last
      end
    end
    
    def pop
      if @stack.last == @min
        @stack.pop
        @min = @stack.last
      end
    end
    
    def min
      return @min
    end
  
  end
  
  stack = Stack.new
  stack.push(5)
  puts stack.min
  stack.push(3)
  puts stack.min
  p stack.pop
  puts stack.min
  
#   stack.pop
#   stack.push(7)
#   puts stack.min
  # => 3
  
#   stack.push(2)
#   puts stack.min
  # => 2
  
#   stack.pop
#   puts stack.min
  # => 3