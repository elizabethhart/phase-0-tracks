class TodoList

  def initialize(items)
    @arr = items
  end

  def get_items
    @arr
  end

  def add_item(x)
    @arr << x
  end

  def delete_item(x)
    @arr.delete_if {|item| item == x}
  end

  def get_item(x)
    @arr[x]
  end

end