class Product < ApplicationRecord
    
end

class Product < ActiveRecord
    has_many :order_line

    before_destroy :ensure_not_referenced_by_any_order_line

    private

        def ensure_not_referenced_by_any_order_line
            if order_line.empty?
                return true
            else
                errors.add( :base, 'Line Item present')
                return false
            end
        end
end