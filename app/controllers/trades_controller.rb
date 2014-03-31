class TradesController < ApplicationController
  def new
  	#@trade = Trade.new
  end

  def create
  	#@stock_id = params[:trade][:stock_id]
  	@start_date = params[:trade][:start_month]
  	@end_date = params[:trade][:end_month]
  	@quantity = params[:trade][:quantity]
  	@order_type = params[:trade][:order_type]
  	@price_index = params[:trade][:price_index]
  	@unit_of_count = params[:trade][:unit_of_count]

  	@trade = Trade.new( start_month: @start_date, finish_month: @end_date, 
  						order_type: @order_type, price_index: @price_index, 
  						unit_of_count: @unit_of_count,) #quantity: @quantity, 
  	



  	#@stock = Stock.find(@stock_id)
  	# Add the new stocks to Inventory or update the number of stocks
  	# if i = Inventory.find_by_stock_id(@trade.stock_id)
  	# 	if @order_type == :buy
  	# 		i.quantity += @trade.quantity
  	# 	else # can only be :sell
  	# 		i.quantity -= @trade.quantity
  	# 	i.save
  	# 	end
  	# else
  	# 	i = Inventory.create(stock_id: @trade.stock_id, quantity: @trade.quantity)
  	# end
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
