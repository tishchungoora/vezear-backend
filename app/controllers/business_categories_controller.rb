class BusinessCategoriesController < ApplicationController

    def index
        business_categories = BusinessCategory.all
        render json: business_categories
    end

end
