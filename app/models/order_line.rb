class OrderLine < ApplicationRecord
  belongs_to :Product
  belongs_to :Order
end
