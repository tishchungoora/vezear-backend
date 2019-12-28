class ProductCategoriesController < ApplicationController

    def index
        product_categories = ProductCategory.all
        render json: ProductCategorySerializer.new(product_categories).to_serialized_json
    end

end
