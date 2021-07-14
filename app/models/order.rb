class Order < ApplicationRecord
    
end

class Order < ActiveRecord::Base
    has_many :order_line, dependent: :destroy
end
