class Stock < ActiveRecord::Base
	has_many :trades
	belongs_to :inventory
end
