class OrdersController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    @order = Order.new(item: @item, user: current_user)
    if @order.save
      @item.available = false
      @item.save
      redirect_to my_items_path, notice: "Your item has been purchased"
    else
      redirect_to @item, notice: "Failed"
    end
  end
end
