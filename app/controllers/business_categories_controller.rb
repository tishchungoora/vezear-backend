class BusinessCategoriesController < ApplicationController

    def index
        business_categories = BusinessCategory.all
        render json: BusinessCategorySerializer.new(business_categories).to_serialized_json
    end

end
