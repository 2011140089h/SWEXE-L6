class ApplicationController < ActionController::Base
    private
        def current_cart
            if session[:cartid]
                cart = Cart.find(session[:cartid])
            else
                cart = Cart.create
                session[:cartid] = cart.id
            end
            cart
        end
        helper_method :current_cart
end
