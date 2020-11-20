class OrdersController < ApplicationController
  before_action :set_order, only: [:index, :create]

  def index
    @order_form = OrderForm.new
  end

  def create
    @order_form = OrderForm.new(order_params)
    if @order_form.valid?
      @order_form.save
      redirect_to action: :index
    else
      render action: :index
    end
  end

  private

  def order_params
    params.require(:order_form).permit(:post_code, :prefectures_id, :municipality, :address, :building_name, :phone_number).merge(user_id: current_user.id, item_id: @item.id)
  end

  def set_order
    @item = Item.find(params[:item_id])
  end

end
