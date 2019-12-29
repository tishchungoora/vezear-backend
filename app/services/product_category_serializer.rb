class ProductCategorySerializer

    def initialize(product_category_object)
        @product_category = product_category_object
    end

    def to_serialized_json()
        options = {
            except: [:created_at, :updated_at]
        }
        
        @product_category.to_json(options)
    end

end