class TradesController < ApplicationController
  def new
  	#@trade = Trade.new
  end

  def create
  	@stock_id = params[:trade][:stock_id]
  	@date = params[:trade][:date]
  	@quantity = params[:trade][:quantity]
  	@order_type = params[:trade][:order_type]
  	@trade = Trade.new(stock_id: @stock_id, quantity: @quantity, order_type: @order_type)
  	@stock = Stock.find(@stock_id)
  	
  	# Add the new stocks to Inventory or update the number of stocks
  	if i = Inventory.find_by_stock_id(@trade.stock_id)
  		if @order_type == :buy
  			i.quantity += @trade.quantity
  		else # can only be :sell
  			i.quantity -= @trade.quantity
  		i.save
  		end
  	else
  		i = Inventory.create(stock_id: @trade.stock_id, quantity: @trade.quantity)
  	end
  	@trade.save

  end

  def update
  end

  def destroy
  end

  private
  	def params_parse
  	end
end
