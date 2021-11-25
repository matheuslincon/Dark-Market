class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @item = Item.global_search(params[:query]).where(available: true)
    else
      @item = Item.all.where(available: true)
    end
  end

  def show; end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      redirect_to items_path, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @item.update(item_params)
      redirect_to items_path, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if check_if_user
      puts "=" * 50
      @item.destroy
      redirect_to items_path, notice: 'Item was successfully destroyed.'
    else
      redirect_to items_path, notice: 'You aren`t make this comand.'
    end
  end

  private

  def check_if_user
    @item.user == current_user
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :description, :photo)
  end
end
