class SitemanagerController < ApplicationController
    def index
        @items=Product.all
    end
    
    def addproduct
        @product=Product.new(name: nil,price: nil)
    end
    
    def createproduct
        @product=Product.new(name: params[:name],price: params[:price])
        if @product.save
            flash[:notice] = "Product add success!"
            redirect_to root_path
        else
            render "addproduct"
        end
    end
    
    def deleteproduct
        item = Product.find(params[:id])
        item.destroy
        redirect_to root_path
    end
end
