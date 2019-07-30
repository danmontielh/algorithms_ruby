class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
      @next_node = next_node
    end
  end
  
  class LinkedList
    #setup head and tail
    attr_accessor :node, :tail, :head
  
      def initialize
      @tail = 0
      @head = nil
      end
  
  
    def add(number)
      node = Node.new(number) 
  
      if @head == nil
        @head = node
      else  
        current_node = @head
        while current_node.next_node
          current_node = current_node.next_node
        end
        current_node.next_node = node 
      end
      
     @tail+=1
    end
  
    def get(index)
      node = @head
      count_index = 0
      while count_index < index
        count_index+=1
        node = node.next_node
      end
    return node.value
    end
  
    def add_at(index,item)
      new_node = Node.new(item)
      if @head == nil 
        add(item)
      else
        actual_node = @head
      the_index = 0
      while the_index < index - 1
        actual_node = actual_node.next_node
        the_index+=1
      end
      current = actual_node.next_node
      new_node.next_node = current
      actual_node.next_node = new_node
      end
    end
  
    def remove(index)
      actual_node = @head
      the_index = 0
      prev_node = ""
  
      if index == 0
        @head = actual_node.next_node
      else
        while the_index != index
          the_index+=1
          prev_node = actual_node
          actual_node = actual_node.next_node
          
        end
        prev_node.next_node = actual_node.next_node
      end
    end
  
    
  
  private
  
    def get_node(index)
      node = @head
      the_index = 1
      while node != nil
         if the_index == index
           return node
         end
        the_index+=1
        node = node.next_node
      end  
    end
  
  end


class Stack
  attr_accessor :top


    def initialize
      @top = nil
    end



    def push(number)
      @top = Node.new(number, @top)
    end
    
    def pop
      if is_empty?
        p "Stack is empty"
      else
        value = @top.value
        @top = @top.next_node
        value 
      end
    end

    def is_empty?
      @top.nil?
    end

  end
  
  stack = Stack.new
  stack.pop
  
  
  
  

  
  
  
  
