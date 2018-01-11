class itemsController < ApplicationController

	  def index
	    @items = item.where(activated: true).paginate(page: params[:page])
	  end

	  def show
	    @item = item.find(params[:id])
	    redirect_to root_url and return

    def new
        @item = item.new
    end

    def create
      @item = Item.new(item_params)
      if @item.save

        redirect_to login_url
      else
        render 'new'
      end
    end

    def edit
        @item = Item.find(params[:id])
    end

    def update
        @item = Item.find(params[:id])

        if @item.update_attributes(item_params)
            flash[:success] = "Item updated"
            redirect_to @item
        else
            render 'edit'
        end
    end

    def destroy
        item.find(params[:id]).destroy
        flash[:success] = "Item deleted"
        redirect_to items_url
    end

    private


end
