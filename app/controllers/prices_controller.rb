class PricesController < ApplicationController
	include PricesHelper

	def show_ara
		@ara_prices = ara_prices #Helper He
	end

	def show_local
		@local_prices = local_prices #Helper He
	end

end
