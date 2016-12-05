class TodoList
  def initialize(items)
    @items =items
  end

  def get_items 
     @items 
  end

  def add_item(item)
    @items = @items.to_a + ["#{item}"]
    @items
  end

  def delete_item(item)
    @items = @items.to_a - ["#{item}"]
    @items
  end

    def get_item(i)
    @items = @items.to_a
    # @items = @items.find_index("#{i}")
    @items = @items[i]
    @items
    end


end