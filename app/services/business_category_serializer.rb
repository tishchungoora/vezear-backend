class BusinessCategorySerializer

    def initialize(business_category_object)
        @business_category = business_category_object
    end

    def to_serialized_json()
        options = {
            except: [:id, :created_at, :updated_at]
        }
        
        @business_category.to_json(options)
    end

end