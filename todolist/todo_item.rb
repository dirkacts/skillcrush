class TodoItem
  attr_reader :name

  def initialize(name)
    @name = name
    @complete = false
  end

  def to_s
    if complete?
      "[C] #{name}"
    else
      "[I] #{name}"
    end
  end

  def complete?
    @complete
  end

  def mark_complete!
    @complete = true
  end

  def mark_incomplete!
    @complete = false
  end
end


todo_item = TodoItem.new("Milk")

puts todo_item
todo_item.mark_complete!
puts todo_item
todo_item.mark_incomplete!
puts todo_item