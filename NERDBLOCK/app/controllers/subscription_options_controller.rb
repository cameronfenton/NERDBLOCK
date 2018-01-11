class SubscriptionOptionsController < ApplicationController
  before_action :set_subscriptionOptions, only: [:show, :edit, :update, :destroy]

  def index
      @subscriptionOptions = SubscriptionOption.all
  end

  def show
	@subscriptionOption = SubscriptionOption.find(params[:id])
  end

  def new
    @subscriptionOption = SubscriptionOption.new
  end

  def edit
      @subscriptionOption = SubscriptionOption.find(params[:id])
  end

  def create
    @subscriptionOption = SubscriptionOption.new(subscriptionOption_params)
    if @subscriptionOption.save
        redirect_to subscriptionOptions_url
    else
      render 'new'
    end
  end

  def update
      @subscriptionOption = SubscriptionOption.find(params[:id])

      if @subscriptionOption.update_attributes(subscriptionOption_params)
          flash[:success] = "subscriptionOption updated"
          redirect_to subscriptionOptions_url
      else
          render 'edit'
      end
  end

  def destroy
    @subscriptionOption.destroy
    respond_to do |format|
      format.html { redirect_to subscriptionOptions_url, notice: 'subscriptionOption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_subscriptionOption
      @subscriptionOption = SubscriptionOption.find(params[:id])
    end

    def subscriptionOption_params
                params.permit(:subscriptionOption_name, :genre_id, :subscriptionOption_description, :subscriptionOption_price)
    end
end
