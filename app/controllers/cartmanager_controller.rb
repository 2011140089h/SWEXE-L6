class CartmanagerController < ApplicationController
    def items
        @item=CartItem.new(product_id:nil,cart_id: nil, quantitiy: nil)
        @addtocart=Product.find(params[:id])
        #@addtocart=CartItem.new(product_id: params[:id])
    end
    
    def addtocart
        @cartid=Cart.find(current_cart.id)
        @product=Product.find(params[:id])
        #@cart.cart_items.create!(product_id: @product, quantitiy: params[:quantity])
        @item=CartItem.new(product_id: @product.id,cart_id: @cartid.id, quantitiy: params[:quantity])
        if @item.save
            flash[:notice] = "Product add success!"
            redirect_to root_path
        else
            render "items"
        end
    end
    
    def delete
        item=CartItem.find(params[:id])
        item.destroy
        redirect_to "/carts"
    end
    
    def carts
        cartid=current_cart.id
        @incart=CartItem.where(cart_id: cartid)
    end
    
end
