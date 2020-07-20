class OrderProduct < ApplicationRecord
	belongs_to :products
	belongs_to :product
end
