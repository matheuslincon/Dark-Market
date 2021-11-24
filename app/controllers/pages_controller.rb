class PagesController < ApplicationController
  def home
  end

  def my_items
  @my_items = current_user.items
  @bought_items = current_user.orders
  # @sold_items = @my_items.where.not(order: false)
  end
end
