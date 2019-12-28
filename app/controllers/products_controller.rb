class ProductsController < ApplicationController

    def index
        products = Product.all
        render json: ProductSerializer.new(products).to_serialized_json
    end

    def show
        product = Product.find(params[:id])
        render json: ProductSerializer.new(product).to_serialized_json
    end
    
end
