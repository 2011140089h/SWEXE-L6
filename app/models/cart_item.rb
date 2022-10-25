class CartItem < ApplicationRecord
    validates :quantitiy, presence: true, numericality: {greater_than: 0}
    belongs_to :Product, optional: true
    belongs_to :cart
end
