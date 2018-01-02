class OrdersController < ApplicationController

  before_action  :authenticate_user!

  def index
    @orders = Order.all
  end

  def show
   @order = Order.find(params[:id])
 end

 def new
   @order = Order.new
 end




 def create
  @order = Order.new(order_params)

  respond_to do |format|
    if @order.save
      format.html { redirect_to @order, notice: 'order was successfully created.' }
      format.json { render :show, status: :created, location: @order }
    else
      format.html { render :new }
      format.json { render json: @order.errors, status: :unprocessable_entity }
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:product_id, :total ,:user_id)
    end
  end
  end