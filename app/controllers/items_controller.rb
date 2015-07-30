class ItemsController < ApplicationController
  def index
    cookies[:hit_counter] = cookies[:hit_counter].to_i + 1
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id].to_i)
  end
end
