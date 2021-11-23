class ItemsController < ApplicationController
  before_action :set_intem, only: %i[show edit update destroy]

  def index
    @items = Intem.all
  end

  def show; end

  def new
    @intem = Intem.new
  end

  def create
    @intem = Intem.new(intem_params)
  end

  def edit; end

  def update
    if @intem.update(intem_params)
      redirect_to @intem
    else
      render :edit
    end
  end

  def destroy
    @intem = Intem.destroy
  end

  private

  def set_intem
    @intem = Intem.find(params[:id])
  end

  def intem_params
    params.require(:intem).permit(:name, :price, :description)
  end
end
