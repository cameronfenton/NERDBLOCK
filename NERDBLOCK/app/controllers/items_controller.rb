class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
      @items = Item.all
  end

  def show
		@item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
      @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    if @item.save
        redirect_to items_url
    else
      render 'new'
    end
  end

  def update
      @item = Item.find(params[:id])

      if @item.update_attributes(item_params)
          flash[:success] = "Item updated"
          redirect_to items_url
      else
          render 'edit'
      end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
                params.permit(:item_name, :genre_id, :item_description, :item_price)
    end
end
