module My
  class Stack

    def initialize
      @items = []
    end

    def empty?
      @items.empty?
    end

    def size
      @items.size
    end

    def pop
      return @items.delete_at(size - 1) unless empty?
      raise UnderflowError.new
    end

    def push(item)
      @items << item
    end

    class UnderflowError < Exception
    end

  end
end