class ProductSerializer

    def initialize(product_object)
        @product = product_object
    end

    def to_serialized_json()
        options = {
            include: {
                product_category: { only: :name }
            },
            except: [:product_category_id, :created_at, :updated_at]
        }
        
        @product.to_json(options)
    end

end