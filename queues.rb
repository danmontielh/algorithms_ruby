class Node
    attr_accessor :value, :next_node, :length

    def initialize(value, next_node = nil)
        @value = value
      @next_node = next_node
    end
  end


class Queue

    attr_accessor :head, :tail

    def initialize
        @head = nil 
        @length = 0
    end


    def add(number)
      node = Node.new(number, nil)
      unless @head 
        @head = node
      else 
        self.tail.next_node = node
      end
      self.tail = node
      @length += 1
    end
    
    def remove
      if @length > 0
        number_return = @head.value
        @head = @head.next_node
        self.tail = nil if @length == 1
        @length -= 1
        number_return
      else 
        -1
      end 
    end
  end
  
  queue = Queue.new
  
  queue.add(3)
  queue.add(5)
  p queue.remove 
  # => 3
  
