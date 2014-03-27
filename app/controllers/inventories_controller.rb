class InventoriesController < ApplicationController
	def show
		@inventory = Inventory.all
		@stocks = Stock.all
	end
	
end
