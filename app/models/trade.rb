class Trade < ActiveRecord::Base
	belongs_to :stock
	validates :stock, presence: true
end
