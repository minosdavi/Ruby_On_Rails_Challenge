module CurrentOrder
    extended ActiveSupport::concern

    private

    def set_order
        @order = Order.find(session[:order_id])
    rescue ActiveRecord::RecordNotFound
        @order = Order.creat
        session [:order_id] = @order.id
    end


end